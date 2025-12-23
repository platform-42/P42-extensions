// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "P42-extensions",
    platforms: [
        .iOS(.v17),
        .watchOS(.v10),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "P42-extensions",
            targets: ["P42-extensions"]),
    ],
    targets: [
        .target(
            name: "P42-extensions"),
        .testTarget(
            name: "P42-extensionsTests",
            dependencies: ["P42-extensions"]),
    ]
)
