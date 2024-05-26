import SwiftUI
import NeedleFoundation
import RootFeatureInterface

public protocol RootDependency: Dependency {
}

public final class RootComponent: Component<RootDependency>, RootFactory {
    public func makeView() -> some View {
        RootView(
            viewModel: .init()
        )
    }
}
