// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTestFailRetry/co/touchlab/notshared-kmmbridge/1.5.137/notshared-kmmbridge-1.5.137.zip"
let remoteKotlinChecksum = "df41c5d167d047db6ea1864ff605142371f6b5a9c0463d68fb666d3d3f0ecfa6"
let packageName = "notshared"
// END KMMBRIDGE BLOCK

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