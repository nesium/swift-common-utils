import ComposableArchitecture

public struct None: Hashable, Sendable {
  public static let none = None()

  private init() {}
}

public extension TaskResult<None> {
  static let none = TaskResult.success(.none)

  init(catching body: @Sendable () async throws -> Void) async {
    do {
      try await body()
      self = .none
    } catch {
      self = .failure(error)
    }
  }
}
