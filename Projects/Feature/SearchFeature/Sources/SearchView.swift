import DesignSystem
import SwiftUI
import BaseFeature

struct SearchView: View {
    @StateObject var viewModel: SearchViewModel

    init(
        viewModel: SearchViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                SearchTextField(text: $viewModel.searhText)
                ForEach(0..<10) { _ in
                    SearchCell(title: "타이틀", name: "홍승재", currentCount: 3, maxCount: 5)
                }
            }
        }
        .navigationTitle("그룹 검색")
        .navigationBarTitleDisplayMode(.inline)
    }
}
