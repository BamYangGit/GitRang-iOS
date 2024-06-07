import BaseFeature
import SwiftUI
import DesignSystem
import SplashFeatureInterface
import OnboardingFeatureInterface
import MainFeatureInterface
import TabFeatureInterface

struct RootView: View {
    @AppState var appState

    private let onboardingFactory: any OnboardingFactory
    private let splashFactory: any SplashFactory
    private let tabFactory: any TabFactory

    public init(
        onboardingFactory: any OnboardingFactory,
        splashFactory: any SplashFactory,
        tabFactory: any TabFactory
    ) {
        self.onboardingFactory = onboardingFactory
        self.splashFactory = splashFactory
        self.tabFactory = tabFactory
    }

    var body: some View {
        NavigationView {
            ZStack {
                switch appState.sceneFlow {
                case .onboarding:
                    onboardingFactory.makeView().eraseToAnyView()
                        .environmentObject(appState)

                case .main:
                    tabFactory.makeView().eraseToAnyView()
                        .environmentObject(appState)

                case .splash:
                    splashFactory.makeView().eraseToAnyView()
                        .environmentObject(appState)
                }
            }
            .animation(.easeInOut, value: appState.sceneFlow)
            .transition(.opacity.animation(.easeInOut))
        }
    }
}
