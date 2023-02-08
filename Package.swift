// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "swift-common-utils",
  platforms: [.iOS(.v13), .macOS(.v10_15)],
  products: [
    .library(name: "BareMinimum", targets: ["BareMinimum"]),
    .library(name: "TCAUtils", targets: ["TCAUtils"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture",
      .upToNextMajor(from: "0.50.1")
    ),
  ],
  targets: [
    .target(name: "BareMinimum"),
    .target(
      name: "TCAUtils",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
      ]
    ),
  ]
)
