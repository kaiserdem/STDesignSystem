//
//  Package.swift
//  STDesignSystem
//
//  Created by Yaroslav Golinskiy on 17/07/2025.
//

import PackageDescription

let package = Package(
    name: "STDesignSystem",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "STDesignSystem",
            targets: ["STDesignSystem"]),
    ],
    dependencies: [
        // Поки що немає зовнішніх залежностей
    ],
    targets: [
        .target(
            name: "STDesignSystem",
            dependencies: []),
        .testTarget(
            name: "STDesignSystemTests",
            dependencies: ["STDesignSystem"]),
    ]
)
