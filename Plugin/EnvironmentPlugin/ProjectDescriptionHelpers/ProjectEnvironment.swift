import Foundation
import ProjectDescription

public struct ProjectEnvironment {
    public let name: String
    public let organizationName: String
    public let destinations: Destinations
    public let deploymentTargets: DeploymentTargets
    public let baseSetting: SettingsDictionary
}

public let env = ProjectEnvironment(
    name: "GitRank-iOS",
    organizationName: "BamyangGit",
    destinations: [.iPhone],
    deploymentTargets: .iOS("16.0"),
    baseSetting: [:]
)
