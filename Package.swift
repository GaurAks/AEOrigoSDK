// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AEOrigoSDK",
    platforms: [
        .iOS(.v17)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AEOrigoSDK",
            targets: ["AEOrigoSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AEOrigoSDK",
            resources: [
                    .process("Sources/Resources/OrigoSDK.xcframework") // Replace with the actual path
                  ]
        ),
        .binaryTarget(name: "OrigoSDKXC", path: "Sources/Resources/OrigoSDK.xcframework"),
        .testTarget(
            name: "AEOrigoSDKTests",
            dependencies: ["AEOrigoSDK"]),
    ]
)
