// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/9folders-taesoon/KMMLib/org/taesoon2/allshared-kmmbridge/0.1.4/allshared-kmmbridge-0.1.4.zip"
let remoteKotlinChecksum = "77e8bb61e06b3f03d59039755b3984eeac6f664ef5f3b36cc6c4f02d76321da9"
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