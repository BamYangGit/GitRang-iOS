import SwiftUI

public struct SearchTextField: View {
    @Binding var text: String

    public init(text: Binding<String>) {
        _text = text
    }

    public var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                TextField("", text: $text)
                    .gitRankFont(.body, color: .GrayScale.gray700)

                Color.GrayScale.gray400
                    .frame(maxWidth: .infinity, maxHeight: 1)
            }

            GitRankImage(.xmark)
                .frame(width: 24, height: 24)
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
    }
}
