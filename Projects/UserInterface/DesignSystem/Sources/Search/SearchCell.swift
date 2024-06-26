import SwiftUI

public struct SearchModel: Equatable, Hashable {
    public let title: String
    public let name: String
    public let currentCount: Int
    public let maxCount: Int

    public init(title: String, name: String, currentCount: Int, maxCount: Int) {
        self.title = title
        self.name = name
        self.currentCount = currentCount
        self.maxCount = maxCount
    }
}

public struct SearchCell: View {
    private let searchModel: SearchModel

    public init(searchModel: SearchModel) {
        self.searchModel = searchModel
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(searchModel.title)
                .gitRankFont(.body, color: .GrayScale.gray700)

            HStack(alignment: .bottom) {
                Text(searchModel.name)
                    .gitRankFont(.description, color: .GrayScale.gray700)

                Spacer()

                Text("\(searchModel.currentCount)/\(searchModel.maxCount)")
                    .gitRankFont(.caption, color: .GrayScale.gray700)
            }
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
    }
}
