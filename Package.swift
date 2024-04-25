// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EFSwiftyZeroMQ",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EFSwiftyZeroMQ",
            targets: ["EFSwiftyZeroMQ"]),
    ],
    targets: [
        .binaryTarget(name: "SwiftyZeroMQ", path: "SwiftyZeroMQ.xcframework.zip"),
        .target(
            name: "EFSwiftyZeroMQ",
            dependencies: ["SwiftyZeroMQ"]),
        .testTarget(
            name: "SwiftyZeroMQTests",
            dependencies: ["EFSwiftyZeroMQ", "SwiftyZeroMQ"]),
    ]
)
