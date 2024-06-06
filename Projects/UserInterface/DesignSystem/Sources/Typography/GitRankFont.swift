import SwiftUI

public struct GitRankFont: ViewModifier {
    public let style: GitRankFontStyle
    private let lineHeight: CGFloat

    init(style: GitRankFontStyle) {
        self.style = style
        self.lineHeight = style.weight.font(size: style.size).lineHeight
    }

    public func body(content: Content) -> some View {
        content
            .font(style.weight.swiftUIFont(size: style.size))
            .lineSpacing(lineHeight * style.lineHeight - lineHeight)
            .padding(.vertical, (lineHeight * style.lineHeight - lineHeight) / 4)
    }
}

public extension View {
    func gitRankFont(_ style: GitRankFontStyle) -> some View {
        self
            .modifier(DesignSystem.GitRankFont(style: style))
    }

    func gitRankFont(_ style: GitRankFontStyle, color: Color) -> some View {
        self
            .gitRankFont(style)
            .foregroundColor(color)
    }
}
