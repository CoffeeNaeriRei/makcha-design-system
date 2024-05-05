// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "makcha-design-system",
    platforms: [.macOS(.v13),
                .iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "makcha-design-system",
            targets: ["makcha-design-system"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "makcha-design-system"),
        .testTarget(
            name: "makcha-design-systemTests",
            dependencies: ["makcha-design-system"]),
    ]
)
