// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXSingularConnector",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "CloudXSingularConnector",
            targets: ["CloudXSingularConnectorPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/singular-labs/Singular-iOS-SDK.git",
            from: "12.6.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXSingularConnector",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-connector-singular/releases/download/binary/12060000.0.0/CloudXSingularConnector.xcframework.zip",
            checksum: "ec95aebddb86d334a9b1d5f24b0b987917de78bcf71934dda897ac310d3997d2"
        ),
        .target(
            name: "CloudXSingularConnectorPackage",
            dependencies: [
                "CloudXSingularConnector",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "Singular", package: "singular-ios-sdk"),
            ]
        ),
        .testTarget(
            name: "CloudXSingularConnectorSwiftTests",
            dependencies: ["CloudXSingularConnectorPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXSingularConnectorObjCTests",
            dependencies: ["CloudXSingularConnectorPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
