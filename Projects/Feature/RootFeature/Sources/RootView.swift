import BaseFeature
import SwiftUI
import DesignSystem
import SplashFeatureInterface
import OnboardingFeatureInterface
import MainFeatureInterface

struct RootView: View {
    @AppState var appState
//    private let splashFactory: any SplashFactory
//    private let signinFactory: any SigninFactory
//    private let mainFactory: any MainFactory
//
//    public init(
//        splashFactory: any SplashFactory,
//        signinFactory: any SigninFactory,
//        mainFactory: any MainFactory
//    ) {
//        self.splashFactory = splashFactory
//        self.signinFactory = signinFactory
//        self.mainFactory = mainFactory
//    }

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
