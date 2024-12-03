// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Piyola",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library( name: "Piyola", targets: ["Piyola"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.1"),
        .package(url: "https://github.com/scenee/FloatingPanel", from: "2.8.6"),
        .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.2")
    ],
    targets: [
        .target(
            name: "Piyola",
            dependencies: ["SnapKit", "FloatingPanel"],
            resources: [.process("Resources/Fonts")],
            plugins: [.plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")]
        ),
        .testTarget(
            name: "PiyolaTests",
            dependencies: ["Piyola"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
