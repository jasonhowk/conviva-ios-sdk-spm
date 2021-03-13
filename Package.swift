// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConvivaSDK",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaSDK",
	    type: .dynamic,
            targets: ["ConvivaSDK"]),
        .library(
            name: "ConvivaSDKStatic",
	    type: .static,
            targets: ["ConvivaSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.11/Framework/ConvivaSDK.xcframework.zip",
            checksum: "83712eaae7ea70b74e15dfec8bba2c6cf816a7512deccd3588b0e2e2740a7823")
    ]
)
