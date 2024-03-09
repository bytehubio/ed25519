// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "Ed25519",
    targets: [
        Target(name: "Ed25519", dependencies: ["CEd25519"])
    ]
)

let name: String = "Ed25519"

let package = Package(
    name: name,
    products: [
        .library(name: name, targets: [name]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: name,
            dependencies: ["CEd25519"]
        ),
        .testTarget(
            name: "Ed25519Tests", dependencies: ["Ed25519"]
        ),
    ]
)

