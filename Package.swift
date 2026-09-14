// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationOguryPresageAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationOguryPresageAdapter",
            targets: ["AppLovinMediationOguryPresageAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/Ogury/ogury-sdk-spm.git", exact: "5.3.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/ogurypresage-adapter/AppLovinMediationOguryPresageAdapter-5.3.0.1.zip",
            checksum: "4b2c69815e36b6118aa4f83da079268e1027e6e6445b0d7628be72cba78f4921"
        )
    ]
)
