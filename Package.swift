// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UniverseKit",
    platforms: [ .iOS(.v14) ],
    products: [
        .library(
            name: "UniverseKit",
            targets: ["UniverseKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.6.0")
    ],
    targets: [
        .target(
            name: "UniverseKit",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit", condition: .when(platforms: [.iOS]))
            ],
            path: "Sources/UniverseKit",
            resources: [
                .process("Font/Fonts"),
                .process("Asset/Icon.xcassets")
            ]),
        .testTarget(
            name: "UniverseKitTests",
            dependencies: ["UniverseKit"]),
    ],
    swiftLanguageVersions: [.v5]
)
