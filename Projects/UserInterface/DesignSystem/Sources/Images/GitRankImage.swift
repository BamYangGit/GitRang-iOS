import SwiftUI

public struct GitRankImage: View {
    public enum Image {
        case logo
        case navigationLogo
        case github
        case xmark
        case crown
    }

    private var image: Image
    private var renderingMode: SwiftUI.Image.TemplateRenderingMode

    public init(
        _ image: Image,
        renderingMode: SwiftUI.Image.TemplateRenderingMode = .original
    ) {
        self.image = image
        self.renderingMode = renderingMode
    }

    public var body: some View {
        gitRankToImage()
            .resizable()
            .renderingMode(renderingMode)
    }

    private func gitRankToImage() -> SwiftUI.Image {
        switch image {
        case .logo:
            DesignSystemAsset.Images.logo.swiftUIImage

        case .navigationLogo:
            DesignSystemAsset.Images.navigationLogo.swiftUIImage

        case .github:
            DesignSystemAsset.Images.github.swiftUIImage

        case .xmark:
            DesignSystemAsset.Images.xmark.swiftUIImage

        case .crown:
            DesignSystemAsset.Images.crown.swiftUIImage
        }
    }
}
