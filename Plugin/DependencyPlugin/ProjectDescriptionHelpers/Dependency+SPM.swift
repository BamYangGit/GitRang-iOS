import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    static let Moya = TargetDependency.external(name: "Moya")
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
    static let Needle = TargetDependency.external(name: "NeedleFoundation")
    static let ContributionChart = TargetDependency.external(name: "ContributionChart")
}

public extension Package {
}
