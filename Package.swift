// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit2",
    platforms: [
        .macOS(.v10_13), .iOS(.v9), .tvOS(.v11), .watchOS(.v4)
    ],
    products: [
        .library(name: "RxBluetoothKit2", targets: ["RxBluetoothKit2"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0"))
    ],
    targets: [
        .target(
                name: "RxBluetoothKit2",
                dependencies: [
                    "RxSwift"
                ],
                path: ".",
                exclude: [
                    "Example",
                    "Tests",
                    "Source/Info.plist",
                    "Source/RxBluetoothKit.h"
                ],
                sources: [
                    "Source"
                ]
            )
    ]
)
