// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyZeroMQ",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftyZeroMQ",
            targets: ["SwiftyZeroMQ"]),
    ],
    targets: [
        .binaryTarget(name: "ZeroMQ", path: "ZeroMQ.xcframework.zip"),
        .target(
            name: "SwiftyZeroMQ",
            dependencies: ["ZeroMQ"]),
        .testTarget(
            name: "SwiftyZeroMQTests",
            dependencies: ["SwiftyZeroMQ", "ZeroMQ"]),
    ]
)
