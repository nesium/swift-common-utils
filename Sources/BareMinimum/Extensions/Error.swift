import Foundation

public extension Error {
  func isEqual(to other: Error) -> Bool {
    if let result = _isEqual(self, other) {
      return result
    }
    return EquatableError(self) == EquatableError(other)
  }
}
