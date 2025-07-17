
// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "STDesignSystem",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "STDesignSystem",
            targets: ["STDesignSystem"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "STDesignSystem",
            dependencies: []),
        .testTarget(
            name: "STDesignSystemTests",
            dependencies: ["STDesignSystem"])
    ]
)
