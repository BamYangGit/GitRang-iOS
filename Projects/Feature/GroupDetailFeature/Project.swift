import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.GroupDetailFeature.rawValue,
    targets: [
        .interface(module: .feature(.GroupDetailFeature)),
        .implements(module: .feature(.GroupDetailFeature), dependencies: [
            .feature(target: .GroupDetailFeature, type: .interface),
            .feature(target: .BaseFeature)
        ])
    ]
)
