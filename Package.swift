// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Toast",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Toast",
            targets: ["Toast"]
        )
    ],
    targets: [
        .target(
            name: "Toast",
            path: "Toast",
            publicHeadersPath: "."
        )
    ]
)
