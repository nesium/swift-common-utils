// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "swift-common-utils",
  products: [
    .library(name: "BareMinimum", targets: ["BareMinimum"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "BareMinimum"),
  ]
)
