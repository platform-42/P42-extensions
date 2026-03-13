// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "P42Extensions",
    platforms: [
        .iOS(.v17),
        .watchOS(.v10),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "P42Extensions",
            targets: ["P42Extensions"]),
    ],
    targets: [
        .target(
            name: "P42Extensions")
    ]
)
