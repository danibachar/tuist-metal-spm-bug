// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "MetalSPM",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .macCatalyst(.v17),
    ],
    products: [
        .library(name: "MetalSPM", targets: ["MetalSPM"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MetalSPM",
            resources: [
                .process("Shaders.metal")
            ]
        ),
        .testTarget(name: "MetalSPMTests", dependencies: [
            "MetalSPM",
        ]),
    ]
)
