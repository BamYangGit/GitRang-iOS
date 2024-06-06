import SwiftUI

public enum GitRankFontStyle: Hashable {
    case pageTitle
    case body
    case description
    case caption

    var size: CGFloat {
        switch self {
        case .pageTitle: 24
        case .body: 16
        case .description: 14
        case .caption: 12
        }
    }

    var lineHeight: CGFloat {
        switch self {
        case .pageTitle: 36
        case .body: 24
        case .description: 20
        case .caption: 16
        }
    }

    var weight: DesignSystemFontConvertible {
        switch self {
        case .pageTitle: DesignSystemFontFamily.Pretendard.bold
        default: DesignSystemFontFamily.Pretendard.medium
        }
    }
}
