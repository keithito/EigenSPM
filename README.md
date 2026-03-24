# EigenSPM

This repo is a minimal Swift Package built around the [Eigen](https://gitlab.com/libeigen/eigen) library so it can be added as a dependency using Swift Package Manager.

## Usage

You can add this directly from Xcode by going to "Add Package Dependency..." and entering `https://github.com/keithito/EigenSPM.git` in the search box.

Or, you can add it to your Package.swift:

```swift
    dependencies: [
        .package(url: "https://github.com/keithito/EigenSPM.git", from: "5.0.1"),
    ],
```

See the [Example](Example/) directory for example usage.


## License

Eigen is licensed under [MPL 2.0](LICENSE).
