import SwiftUI
import NeedleFoundation
import TabFeatureInterface
import MainFeatureInterface

public protocol TabDependency: Dependency {
    var mainFactory: any MainFactory { get }
}

public final class TabComponent: Component<TabDependency>, TabFactory {
    public func makeView() -> some View {
        TabView(
            mainFactory: dependency.mainFactory
        )
    }
}
