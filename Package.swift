// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "coordinator",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "CoordinatorDynamic", type: .dynamic, targets: ["Coordinator"]),
        .library(name: "CoordinatorStatic", type: .static, targets: ["Coordinator"])
    ],
    dependencies: [
        .package(name: "log", url: "git@github.com:janodev/log.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Coordinator",
            dependencies: [
                .product(name: "LogDynamic", package: "log")
            ],
            path: "sources/main"
        )
    ]
)
