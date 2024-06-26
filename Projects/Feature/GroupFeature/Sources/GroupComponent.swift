import SwiftUI
import NeedleFoundation
import GroupFeatureInterface
import GroupDetailFeatureInterface

public protocol GroupDependency: Dependency {
    var groupDetailFactory: any GroupDetailFactory { get }
}

public final class GroupComponent: Component<GroupDependency>, GroupFactory {
    public func makeView() -> some View {
        GroupView(
            viewModel: .init(), groupDetailFactory: dependency.groupDetailFactory
        )
    }
}
