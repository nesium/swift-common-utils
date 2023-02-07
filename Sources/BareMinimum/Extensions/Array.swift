import Foundation

public extension Array {
  subscript(safe index: Index) -> Element? {
    guard index >= self.startIndex, index < self.endIndex else {
      return nil
    }
    return self[index]
  }
}

public extension Optional where Wrapped: Collection {
  /// Returns `true` if the wrapped `Collection` is either nil or empty.
  var isEmptyOrNil: Bool {
    self?.isEmpty ?? true
  }
}
