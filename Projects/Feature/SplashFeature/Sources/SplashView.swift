import DesignSystem
import SwiftUI
import BaseFeature

struct SplashView: View {
    @AppState var appState
    @StateObject var viewModel: SplashViewModel

    init(
        viewModel: SplashViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        GitRankImage(.logo)
            .frame(width: 200, height: 200)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    appState.sceneFlow = .onboarding
                }
            }
    }
}
