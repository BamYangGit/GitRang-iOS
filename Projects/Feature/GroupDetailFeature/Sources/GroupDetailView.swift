import DesignSystem
import SwiftUI
import BaseFeature

struct GroupDetailView: View {
    @StateObject var viewModel: GroupDetailViewModel = .init()
    @Environment(\.safeAreaInsets) var safeAreaInsets
    private let isJoined: Bool

    init(isJoined: Bool) {
        self.isJoined = isJoined
    }

    var body: some View {
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Spacer()

                        TopRankView(topRankData: viewModel.githubRankList)

                        Spacer()
                    }
                    .padding(.top, 16)

                    Text("나의 순위")
                        .gitRankFont(.pageTitle, color: .GrayScale.gray700)

                    RankingListCellView(
                        myGithubData: viewModel.myGithubRank,
                        isMyRank: true
                    )

                    Text("전체 순위")
                        .gitRankFont(.pageTitle, color: .GrayScale.gray700)

                    VStack(spacing: 8) {
                        ForEach(viewModel.githubRankList, id: \.self) { data in
                            RankingListCellView(
                                myGithubData: data,
                                isMyRank: viewModel.myGithubRank?.userID == data.userID
                            )
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .onAppear {
                viewModel.getdata()
            }

            if !isJoined {
                joinButton {

                }
                .padding(.vertical, 16)
                .padding(.horizontal, 21)
                .padding(.bottom, safeAreaInsets.bottom)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }

    @ViewBuilder
    func joinButton(action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text("가입하기")
                .gitRankFont(.body, color: .white)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(12)
        }
    }
}

public struct GithubRankEntity: Hashable {
    public let userID, profileFileName: String
    public let contributions, ranking: Int
}
