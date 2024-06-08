import DesignSystem
import SwiftUI
import BaseFeature

struct SearchView: View {
    @StateObject var viewModel: SearchViewModel

    init(
        viewModel: SearchViewModel
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        Text("SearchView")
    }
}
