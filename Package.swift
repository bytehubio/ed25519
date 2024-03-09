// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "Ed25519",
    products: [
        .library(name: "CEd25519", targets: ["CEd25519"]),
        .library(name: "Ed25519", targets: ["Ed25519"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CEd25519",
            dependencies: []
        ),
        .target(
            name: "Ed25519",
            dependencies: ["CEd25519"]
        ),
        .testTarget(
            name: "Ed25519Tests", dependencies: ["Ed25519"]
        ),
    ]
)

