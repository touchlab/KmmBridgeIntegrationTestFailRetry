// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTestFailRetry/co/touchlab/notshared-kmmbridge/1.5.29/notshared-kmmbridge-1.5.29.zip"
let remoteKotlinChecksum = "c26e06d8efbee9ef12c334794d734aaf6d1bcddd045abc9fe23c08908ede2715"
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