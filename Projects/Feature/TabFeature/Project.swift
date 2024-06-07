import DependencyPlugin
import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.module(
    name: ModulePaths.Feature.TabFeature.rawValue,
    targets: [
        .interface(module: .feature(.TabFeature)),
        .implements(module: .feature(.TabFeature), dependencies: [
            .feature(target: .BaseFeature),
            .feature(target: .TabFeature, type: .interface)
        ]),
        .tests(module: .feature(.TabFeature), dependencies: [
            .feature(target: .TabFeature)
        ])
    ]
)
