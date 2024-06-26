// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MakchaDesignSystem",
    platforms: [.iOS(.v16), .macCatalyst(.v16), .macOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "makcha-design-system",
            targets: ["MakchaDesignSystem"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MakchaDesignSystem",
            exclude: ["_PreviewTester.swift"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "makcha-design-systemTests",
            dependencies: ["MakchaDesignSystem"]),
    ],
    swiftLanguageVersions: [.v5]
)
