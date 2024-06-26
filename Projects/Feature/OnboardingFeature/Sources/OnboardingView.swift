import DesignSystem
import SwiftUI
import BaseFeature

struct OnboardingView: View {
    @AppState var appState
    @StateObject var viewModel: OnboardingViewModel

    init(
        viewModel: OnboardingViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        VStack {
            Spacer()

            GitRankImage(.logo)
                .frame(width: 200, height: 200)

            Spacer()

            githubLoginButton()
            .padding(.vertical, 8)
            .padding(.horizontal, 24)
        }
        .onOpenURL { url in
            let code = url.absoluteString.components(separatedBy: "code=").last ?? ""
            viewModel.login(code: code) {
                self.appState.sceneFlow = .main
            }
        }
    }

    @ViewBuilder
    func githubLoginButton() -> some View {
        Link(destination: .init(string: "https://github.com/login/oauth/authorize?client_id=Ov23ctLekFLZtR4WQk1A")!) {
            HStack(spacing: 8) {
                GitRankImage(.github)
                    .frame(width: 24, height: 24)

                Text("Github로 로그인하기")
                    .gitRankFont(.body, color: .white)
            }
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(.black)
            .cornerRadius(12)
        }
    }
}
