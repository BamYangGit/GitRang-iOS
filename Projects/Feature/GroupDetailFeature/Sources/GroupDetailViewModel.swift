import BaseFeature
import Combine

final class GroupDetailViewModel: BaseViewModel {
    @Published var githubRankList: [GithubRankEntity] = []
    @Published var myGithubRank: GithubRankEntity?

    func getdata() {
        self.githubRankList = [
            .init(userID: "qwer", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 1),
            .init(userID: "qqqq", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 2),
            .init(userID: "wer", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 3),
            .init(userID: "hsj", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 4),
            .init(userID: "qkrwndud", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 5),
            .init(userID: "wnrp", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 6),
            .init(userID: "juge", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 7),
            .init(userID: "ing", profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png", contributions: 1000, ranking: 8)
        ]
        self.myGithubRank = .init(
            userID: "hsj",
            profileFileName: "https://jobis-store.s3.ap-northeast-2.amazonaws.com/LOGO_IMAGE/2f146c6e-fb38-4a9d-99c0-6ae10ab04e93-7.png",
            contributions: 1000,
            ranking: 4
        )
    }
}
