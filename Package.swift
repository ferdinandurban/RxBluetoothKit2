// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxBluetoothKit2",
    platforms: [
        .macOS(.v13), .iOS(.v13), .tvOS(.v13), .watchOS(.v8)
    ],
    products: [
        .library(name: "RxBluetoothKit2", targets: ["RxBluetoothKit2"])
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
