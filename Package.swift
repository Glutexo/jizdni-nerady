// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "jizdni-nerady",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(name: "JizdniNerady", targets: ["JizdniNerady"]),
        .executable(name: "jizdni-nerady", targets: ["jizdni-nerady"]),
    ],
    targets: [
        .target(
            name: "JizdniNerady"
        ),
        .executableTarget(
            name: "jizdni-nerady",
            dependencies: ["JizdniNerady"]
        ),
        .testTarget(
            name: "jizdni-neradyTests",
            dependencies: ["JizdniNerady", "jizdni-nerady"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
