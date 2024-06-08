import SwiftUI
import NeedleFoundation
import SearchFeatureInterface

public protocol SearchDependency: Dependency {
}

public final class SearchComponent: Component<SearchDependency>, SearchFactory {
    public func makeView() -> some View {
        SearchView(
            viewModel: .init()
        )
    }
}
