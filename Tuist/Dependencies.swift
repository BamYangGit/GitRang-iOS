import ProjectDescription
import ConfigurationPlugin

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: SwiftPackageManagerDependencies(
        [
            .remote(
                url: "https://github.com/Team-return/Moya.git",
                requirement: .branch("master")
            ),
            .remote(
                url: "https://github.com/uber/needle.git",
                requirement: .upToNextMajor(from: "0.19.0")
            ),
            .remote(
                url: "https://github.com/VIkill33/SwiftUI-ContributionChart.git",
                requirement: .upToNextMajor(from: "1.0.2")
            )
        ],
        productTypes: [
            "NeedleFoundation": .framework
        ],
        baseSettings: .settings(
            configurations: [
                .debug(name: .dev),
                .debug(name: .stage),
                .release(name: .prod)
            ]
        )
    ),
    platforms: [.iOS]
)
