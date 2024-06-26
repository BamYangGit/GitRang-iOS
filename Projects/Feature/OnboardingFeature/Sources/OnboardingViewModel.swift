import BaseFeature
import Foundation
import Combine
import Moya
import BaseDomain

final class OnboardingViewModel: BaseViewModel {
    private let client = MoyaProvider<GitRankAPI>(plugins: [MoyaLoggerPlugin()])

    func login(code: String, completionHandler: @escaping () -> Void) {
        client.request(.signin(code: code)) { res in
            switch res {
            case .success(let result):
                switch result.statusCode {
                case 200...201:
                    print("✅로그인 성공")
                    completionHandler()
                default:
                    break
                }
            case .failure(let err):
                print("⛔️login error: \(err.localizedDescription)")
            }
        }
    }
}
