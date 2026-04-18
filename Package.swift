// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "poc-openapi-injection",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime",   from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "poc-openapi-injection",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            ],
            plugins: [
                .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator")
            ]
        )
    ]
)
