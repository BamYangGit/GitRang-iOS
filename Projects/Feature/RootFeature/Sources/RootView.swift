import BaseFeature
import SwiftUI
import DesignSystem
import SplashFeatureInterface
import OnboardingFeatureInterface
import MainFeatureInterface

struct RootView: View {
    @AppState var appState

    var body: some View {
        NavigationView {
            ZStack {
                switch appState.sceneFlow {
                case .auth:
                    EmptyView()
                        .environmentObject(appState)

                case .main:
                    EmptyView()
                        .environmentObject(appState)

                case .splash:
                    EmptyView()
                        .environmentObject(appState)
                }
            }
            .animation(.easeInOut, value: appState.sceneFlow)
            .transition(.opacity.animation(.easeInOut))
        }
    }
}
