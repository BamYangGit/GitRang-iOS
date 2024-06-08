import SwiftUI
import NeedleFoundation
import TabFeatureInterface
import MainFeatureInterface
import SearchFeatureInterface

public protocol TabDependency: Dependency {
    var mainFactory: any MainFactory { get }
    var searchFactory: any SearchFactory { get }
}

public final class TabComponent: Component<TabDependency>, TabFactory {
    public func makeView() -> some View {
        TabView(
            mainFactory: dependency.mainFactory,
            searchFactory: dependency.searchFactory
        )
    }
}
