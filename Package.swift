// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "ReverseExtension",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ReverseExtension",
            targets: ["ReverseExtension"]
        ),
    ],
    targets: [
        .target(
            name: "_ReverseExtension_ObjC",
            path: "ReverseExtension/ObjC",
            cSettings: [
                .headerSearchPath("include")
            ]
        ),
        .target(
            name: "ReverseExtension",
            dependencies: ["_ReverseExtension_ObjC"],
            path: "ReverseExtension/Swift",
            exclude: ["../../ReverseExtension.podspec"]
        )
    ]
)
