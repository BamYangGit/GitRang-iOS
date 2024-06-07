import SwiftUI
import BaseFeature
import DesignSystem

@main
struct GitRankApp: App {
    @ObservedObject var appState = AppStateProvider(sceneFlow: .splash)
    
    init() {
        DesignSystemFontFamily.registerAllCustomFonts()
        registerProviderFactories()
    }
    
    var body: some Scene {
        WindowGroup {
            AppComponent().makeRootView()
                .eraseToAnyView()
                .environmentObject(appState)
        }
    }
}
