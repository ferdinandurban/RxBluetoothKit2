// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit2",
    platforms: [
        .macOS(.v10_13), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "RxBluetoothKit2", targets: ["RxBluetoothKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.6.0"))
    ],
    targets: [
        .target(
                name: "RxBluetoothKit",
                dependencies: [
                    "RxSwift"
                ],
                path: ".",
                exclude: [
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
