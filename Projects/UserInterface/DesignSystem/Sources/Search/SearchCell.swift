import SwiftUI

public struct SearchCell: View {
    private let title: String
    private let name: String
    private let currentCount: Int
    private let maxCount: Int

    public init(title: String, name: String, currentCount: Int, maxCount: Int) {
        self.title = title
        self.name = name
        self.currentCount = currentCount
        self.maxCount = maxCount
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .gitRankFont(.body, color: .GrayScale.gray700)

            HStack(alignment: .bottom) {
                Text(title)
                    .gitRankFont(.description, color: .GrayScale.gray700)

                Spacer()

                Text("\(currentCount)/\(maxCount)")
                    .gitRankFont(.caption, color: .GrayScale.gray700)
            }
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
    }
}
