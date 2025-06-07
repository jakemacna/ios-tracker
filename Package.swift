// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TrackerApp",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .executable(name: "TrackerApp", targets: ["TrackerApp"])
    ],
    targets: [
        .executableTarget(
            name: "TrackerApp",
            path: ".",
            resources: [.process("Resources")]
        )
    ]
)
