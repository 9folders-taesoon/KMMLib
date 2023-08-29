// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/9folders-taesoon/KMMLib/org/taesoon2/allshared-kmmbridge/0.1.5/allshared-kmmbridge-0.1.5.zip"
let remoteKotlinChecksum = "bf77ae1c562baaa05a556a2aaf31a5c0c7df4ef64860bb4a315653cd86250703"
let packageName = "allshared"
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