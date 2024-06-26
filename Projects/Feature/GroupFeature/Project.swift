import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.GroupFeature.rawValue,
    targets: [
        .interface(module: .feature(.GroupFeature)),
        .implements(module: .feature(.GroupFeature), dependencies: [
            .feature(target: .GroupFeature, type: .interface),
            .feature(target: .GroupDetailFeature, type: .interface),
            .feature(target: .BaseFeature)
        ])
    ]
)
