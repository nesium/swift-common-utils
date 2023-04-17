import Foundation

public extension URL {
  // Source: https://www.swiftbysundell.com/articles/constructing-urls-in-swift/#static-urls)
  init(staticString string: StaticString) {
    guard let url = URL(string: "\(string)") else {
      preconditionFailure("Invalid static URL string: \(string)")
    }

    self = url
  }
}
