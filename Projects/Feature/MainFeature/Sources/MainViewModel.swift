import BaseFeature
import Combine
import Moya
import BaseDomain
import Foundation

final class MainViewModel: BaseViewModel {
    @Published var entity: GetEntity?
    let client = MoyaProvider<GitRankAPI>(plugins: [MoyaLoggerPlugin()])
    func getData() {
        print("client")
        client.request(.getData) { res in
            switch res {
            case .success(let result):
                switch result.statusCode {
                case 200...201:
                    let decoder = JSONDecoder()
                    if let data = try? decoder.decode(GetResponseDTO.self, from: result.data) {
                        self.entity = data.toDomain
                    } else {
                        print("⚠️login docoder error")
                    }
                default:
                    break
                }
            case .failure(let err):
                print("⛔️login error: \(err.localizedDescription)")
            }
        }
    }
}
