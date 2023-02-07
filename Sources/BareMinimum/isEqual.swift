import Foundation

// Source: https://github.com/pointfreeco/swift-composable-architecture/blob/main/Sources/ComposableArchitecture/Internal/OpenExistential.swift

public func _isEqual(_ lhs: Any, _ rhs: Any) -> Bool? {
  (lhs as? any Equatable)?.isEqual(other: rhs)
}

private extension Equatable {
  func isEqual(other: Any) -> Bool {
    self == other as? Self
  }
}
