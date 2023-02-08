import ComposableArchitecture
import Foundation

public extension EffectTask {
  // Source: https://forums.swift.org/t/ifletstore-and-effect-cancellation-on-view-disappear/38272/23
  static func cancel(token: (some CaseIterable & Hashable).Type) -> EffectTask<Action> {
    EffectTask.cancel(ids: token.allCases.map(AnyHashable.init))
  }
}
