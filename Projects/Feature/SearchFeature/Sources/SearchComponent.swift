import SwiftUI
import NeedleFoundation
import SearchFeatureInterface
import GroupDetailFeatureInterface

public protocol SearchDependency: Dependency {
    var groupDetailFactory: any GroupDetailFactory { get }
}

public final class SearchComponent: Component<SearchDependency>, SearchFactory {
    public func makeView() -> some View {
        SearchView(
            viewModel: .init(),
            groupDetailFactory: dependency.groupDetailFactory
        )
    }
}
