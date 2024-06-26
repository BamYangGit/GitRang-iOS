import SwiftUI
import DesignSystem
import BaseFeature

struct ThirdRankView: View {
    var profileImageURL: String
    var userID: String
    var countOfCommit: Int

    var body: some View {
        VStack(spacing: 0) {
            ZStack(alignment: .top) {
                GitRankImage(.crown, renderingMode: .template)
                    .frame(width: 32, height: 32)
                    .foregroundColor(DesignSystemAsset.Crown.thrid.swiftUIColor)

                AsyncImage(url: URL(string: profileImageURL)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Image("DefaultImage")
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 34, height: 34)
                .cornerRadius(17)
                .padding(.top, 15)
            }
            .padding(.bottom, 21)

            Text("@\(userID)")
                .font(DesignSystemFontFamily.Pretendard.medium.swiftUIFont(size: 10))

            Text("\(countOfCommit) 커밋")
                .font(DesignSystemFontFamily.Pretendard.bold.swiftUIFont(size: 10))
        }
        .frame(width: 98)
        .padding(.top, 8)
        .padding(.bottom, 22)
        .background(Color.GrayScale.gray200)
        .cornerRadius(12)
        .withBorder(cornerRadius: 12, borderColor: DesignSystemAsset.Crown.thrid.swiftUIColor)
    }
}
