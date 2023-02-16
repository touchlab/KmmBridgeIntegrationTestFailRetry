// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTestFailRetry/co/touchlab/notshared-kmmbridge/1.5.111/notshared-kmmbridge-1.5.111.zip"
let remoteKotlinChecksum = "c37ed355e53f30b705a64abbf4f64998c95f6f076540d6891ef85e6cbc5603b5"
let packageName = "notshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)