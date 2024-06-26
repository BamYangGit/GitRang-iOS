import BaseFeature
import Combine
import Foundation

final class SearchViewModel: BaseViewModel {
    @Published var searhText: String = ""

    func onAppear() {
        isLoading = true
        self.isLoading = false
    }
}
