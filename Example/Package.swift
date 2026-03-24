// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "Example",
    platforms: [.iOS(.v12), .macOS(.v12)],
    dependencies: [
        .package(url: "https://github.com/keithito/EigenSPM.git", from: "5.0.1"),
    ],
    targets: [
        .target(
            name: "Example",
            dependencies: ["EigenSPM"],
            path: "CSources",
            publicHeadersPath: "include",
        ),
        .executableTarget(
            name: "Main",
            dependencies: ["Example"],
            path: "Sources",
        )
    ]
)
