// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTestFailRetry/co/touchlab/notshared-kmmbridge/1.5.107/notshared-kmmbridge-1.5.107.zip"
let remoteKotlinChecksum = "f1c8134cd34eb076e89ce979c9f439df7960a382e9c5b7a67512d5cb928f56a2"
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