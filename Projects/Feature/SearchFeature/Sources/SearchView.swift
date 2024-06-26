import DesignSystem
import SwiftUI
import BaseFeature
import GroupDetailFeatureInterface

struct SearchView: View {
    @Environment(\.tabbarHidden) var tabbarHidden
    @StateObject var viewModel: SearchViewModel

    private let groupDetailFactory: any GroupDetailFactory

    init(
        viewModel: SearchViewModel,
        groupDetailFactory: any GroupDetailFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.groupDetailFactory = groupDetailFactory
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                SearchTextField(text: $viewModel.searhText)
                if !viewModel.isLoading {
                    ForEach(0..<1) { _ in
                        NavigationLink {
                            groupDetailFactory.makeView(isJoined: false).eraseToAnyView()
                                .onAppear {
                                    tabbarHidden.wrappedValue = true
                                }
                                .onDisappear {
                                    tabbarHidden.wrappedValue = false
                                }
                                .navigationTitle("대덕소프트웨어마이스터고등학교")
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            SearchCell(
                                searchModel: .init(
                                    title: "대덕소프트웨어마이스터고등학교",
                                    name: "이정호",
                                    currentCount: 18, 
                                    maxCount: 64
                                )
                            )
                        }
                    }
                }
            }
        }
        .navigationTitle("그룹 검색")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: viewModel.onAppear)
    }
}
