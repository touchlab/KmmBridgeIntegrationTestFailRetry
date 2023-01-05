// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTestFailRetry/co/touchlab/notshared-kmmbridge/1.5.37/notshared-kmmbridge-1.5.37.zip"
let remoteKotlinChecksum = "208a354c9b6596e7cf5a98062a1ae17ef0fc463d52a8a6f6d15f5701ff964120"
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