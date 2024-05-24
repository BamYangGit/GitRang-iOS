import SwiftUI

@propertyWrapper
public struct AppState: DynamicProperty {
    @EnvironmentObject private var object: AppStateProvider

    public var wrappedValue: AppStateProvider {
        object
    }

    public init() { }
}

public final class AppStateProvider: ObservableObject {
    @Published public var sceneFlow: SceneFlow

    public init(sceneFlow: SceneFlow) {
        self.sceneFlow = sceneFlow
    }
}
