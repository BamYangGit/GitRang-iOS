import Foundation

public struct GetResponseDTO: Decodable {
    let id: Int
    let accountId: String
    let currentTotalCommit: Int
    let followerCount: Int
    let followingCount: Int
    let imageUrl: String
    let targetCommit: Int
    let todayCommit: Int
    let yesterdayCommit: Int
}

public extension GetResponseDTO {
    var toDomain: GetEntity {
        .init(
            id: id,
            accountId: accountId,
            currentTotalCommit: currentTotalCommit,
            followerCount: followerCount,
            followingCount: followingCount,
            imageUrl: imageUrl,
            targetCommit: targetCommit,
            todayCommit: todayCommit, 
            yesterdayCommit: yesterdayCommit
        )
    }
}

public struct GetEntity: Equatable {
    public let id: Int
    public let accountId: String
    public let currentTotalCommit: Int
    public let followerCount: Int
    public let followingCount: Int
    public let imageUrl: String
    public let targetCommit: Int
    public let todayCommit: Int
    public let yesterdayCommit: Int

    public init(id: Int, accountId: String, currentTotalCommit: Int, followerCount: Int, followingCount: Int, imageUrl: String, targetCommit: Int, todayCommit: Int, yesterdayCommit: Int) {
        self.id = id
        self.accountId = accountId
        self.currentTotalCommit = currentTotalCommit
        self.followerCount = followerCount
        self.followingCount = followingCount
        self.imageUrl = imageUrl
        self.targetCommit = targetCommit
        self.todayCommit = todayCommit
        self.yesterdayCommit = yesterdayCommit
    }
}
