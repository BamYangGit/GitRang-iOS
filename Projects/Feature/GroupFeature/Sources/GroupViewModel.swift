import BaseFeature
import Combine
import Foundation
import DesignSystem

public enum GroupType: Int {
    case left = 1
    case right = 2
}

final class GroupViewModel: BaseViewModel {
    @Published var type: GroupType = .left
    @Published var models: [SearchModel] = []
    func getData() {
        self.models = [
            .init(title: "대덕소프트웨어마이스터고등학교", name: "이정호", currentCount: 18, maxCount: 64),
            .init(title: "CommitPot", name: "유찬홍", currentCount: 7, maxCount: 7)
        ]
    }
}
