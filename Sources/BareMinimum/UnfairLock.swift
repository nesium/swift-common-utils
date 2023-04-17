import Foundation

public final class UnfairLock: NSLocking {
  private let unfairLock: UnsafeMutablePointer<os_unfair_lock>

  public init() {
    self.unfairLock = .allocate(capacity: 1)
    self.unfairLock.initialize(to: os_unfair_lock())
  }

  deinit {
    unfairLock.deinitialize(count: 1)
    unfairLock.deallocate()
  }

  public func lock() {
    os_unfair_lock_lock(self.unfairLock)
  }

  public func unlock() {
    os_unfair_lock_unlock(self.unfairLock)
  }
}

public extension UnfairLock {
  func synchronized<Result>(body: () throws -> Result) rethrows -> Result {
    os_unfair_lock_lock(self.unfairLock)
    defer { os_unfair_lock_unlock(unfairLock) }
    return try body()
  }

  func synchronized(body: () -> Void) {
    os_unfair_lock_lock(self.unfairLock)
    defer { os_unfair_lock_unlock(unfairLock) }
    body()
  }
}
