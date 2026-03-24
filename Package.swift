// swift-tools-version: 5.4
import PackageDescription

let package = Package(
    name: "EigenSPM",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "EigenSPM",
            targets: ["Eigen"]
        ),
    ],
    targets: [
        .target(
            name: "Eigen",
            path: "Sources/Eigen",
            publicHeadersPath: "include",
            cxxSettings: [
                .define("EIGEN_MPL2_ONLY"),
            ],
            linkerSettings: [
                .linkedFramework("Accelerate"),
            ]
        ),
    ],
    cxxLanguageStandard: .cxx14,
)
