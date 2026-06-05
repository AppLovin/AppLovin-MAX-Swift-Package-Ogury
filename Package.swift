// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationOguryPresageAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationOguryPresageAdapter",
            targets: ["AppLovinMediationOguryPresageAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/Ogury/ogury-sdk-spm.git", exact: "5.2.3")
    ],
    targets: [
        .target(
            name: "AppLovinMediationOguryPresageAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationOguryPresageAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "OgurySdk", package: "ogury-sdk-spm"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationOguryPresageAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ogurypresage-adapter/AppLovinMediationOguryPresageAdapter-5.2.3.0.zip",
            checksum: "c56c5aaa2ff0f15724aa5aa199ecb9d3f52bcaf1cb14f7276cb5747616a7b517"
        )
    ]
)
