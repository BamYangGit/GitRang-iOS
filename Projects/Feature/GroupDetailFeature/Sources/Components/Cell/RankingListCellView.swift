import SwiftUI
import DesignSystem
import BaseFeature

struct RankingListCellView: View {
    var myGithubData: GithubRankEntity?
    var isMyRank: Bool = false

    var body: some View {
        HStack(alignment: .center) {
            if let myGithubData {
                HStack(spacing: 10) {
                    HStack(spacing: 14) {
                        Text("\(myGithubData.ranking)위")
                            .gitRankFont(.caption, color: .GrayScale.gray700)
                            .padding(.leading, 10)

                        AsyncImage(url: URL(string: myGithubData.profileFileName)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                        } placeholder: {
                            Image("DefaultImage")
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 42, height: 42)
                        .cornerRadius(21)
                    }

                    Text("@\(myGithubData.userID)")
                        .gitRankFont(.caption, color: .GrayScale.gray700)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Text("\(myGithubData.contributions) 커밋")
                    .gitRankFont(.caption, color: .GrayScale.gray700)
            }
        }
        .padding(10)
        .background(Color.GrayScale.gray200)
        .withBorder(cornerRadius: 8, borderColor: isMyRank ? .GrayScale.gray500 : .clear)
    }
}
