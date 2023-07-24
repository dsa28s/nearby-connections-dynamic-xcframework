// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "NearbyConnections",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NearbyConnections",
            targets: ["NearbyConnections"]
        ),
        .library(
            name: "NearbyCoreAdapter",
            targets: ["NearbyCoreAdapter"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NearbyCoreAdapter",
            url: "https://github.com/dsa28s/nearby-connections-dynamic-xcframework/releases/download/internal-test/NearbyCoreAdapter.xcframework.zip",
            checksum: "9dc3abcfb17466cb072890846b3dda05c23b1b98cef133b6882e4a1883718931"
        ),
        .binaryTarget(
            name: "NearbyConnections",
            url: "https://github.com/dsa28s/nearby-connections-dynamic-xcframework/releases/download/internal-test/NearbyConnections.xcframework.zip",
            checksum: "0e428c00f4d3fd05fd2848bf44434cb8c48291d1c2205f0e02ddc59bb0f14275"
        ),
    ]
)
