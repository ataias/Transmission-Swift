// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Transmission",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "Transmission", targets: ["Transmission"]),
    ],
    dependencies: [
    	.package(url: "https://github.com/broadwaylamb/OpenCombine.git", from: "0.8.0")
    ],
    targets: [
        .target(name: "Transmission", dependencies: [
		"OpenCombine", 
		.product(name: "OpenCombineDispatch", package: "OpenCombine"), 
		.product(name: "OpenCombineFoundation", package: "OpenCombine"), 
		]),
        .testTarget(name: "TransmissionIntegrationTests", dependencies: [.target(name: "Transmission")]),
    ]
)
