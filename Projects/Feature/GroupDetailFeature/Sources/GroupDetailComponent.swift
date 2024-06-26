import SwiftUI
import NeedleFoundation
import GroupDetailFeatureInterface

public protocol GroupDetailDependency: Dependency {
}

public final class GroupDetailComponent: Component<GroupDetailDependency>, GroupDetailFactory {
    public func makeView(isJoined: Bool) -> some View {
        GroupDetailView(
            isJoined: isJoined
        )
    }
}
