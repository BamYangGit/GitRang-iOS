import SwiftUI
import DesignSystem

struct TopRankView: View {
    var topRankData: [GithubRankEntity]

    var body: some View {
        HStack(alignment: .bottom, spacing: 17) {
            if topRankData.count >= 3 {
                SecondRankView(
                    profileImageURL: topRankData[1].profileFileName,
                    userID: topRankData[1].userID,
                    countOfCommit: topRankData[1].contributions
                )
                FirstRankView(
                    profileImageURL: topRankData[0].profileFileName,
                    userID: topRankData[0].userID,
                    countOfCommit: topRankData[0].contributions
                )
                ThirdRankView(
                    profileImageURL: topRankData[2].profileFileName,
                    userID: topRankData[2].userID,
                    countOfCommit: topRankData[2].contributions
                )
            }
        }
    }
}
