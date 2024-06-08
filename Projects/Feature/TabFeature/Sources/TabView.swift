import DesignSystem
import SwiftUI
import BaseFeature
import MainFeatureInterface
import SearchFeatureInterface

struct TabView: View {
    @State var selection: TabFlow = .main
    @State var tabbarHidden = false

    // swiftlint: disable large_tuple
    var tabItem: [(Image, String, TabFlow)] = [
        (Image(systemName: "house"), "홈", .main),
        (Image(systemName: "magnifyingglass"), "검색", .search),
        (Image(systemName: "person.3"), "그룹", .group),
        (Image(systemName: "gear"), "설정", .setting)
    ]
    // swiftlint: enable large_tuple

    private let mainFactory: any MainFactory
    private let searchFactory: any SearchFactory
//    private let myPageFactory: any MyPageFactory
//    private let menuFactory: any MenuFactory

    init(
        mainFactory: any MainFactory,
        searchFactory: any SearchFactory
//        myPageFactory: any MyPageFactory,
//        menuFactory: any MenuFactory
    ) {
        self.mainFactory = mainFactory
        self.searchFactory = searchFactory
//        self.myPageFactory = myPageFactory
//        self.menuFactory = menuFactory
    }

    var body: some View {
        ZStack {
            SwiftUI.TabView(selection: $selection) {
                mainFactory.makeView()
                    .eraseToAnyView()
                    .tag(TabFlow.main)
                    .accentColor(.GrayScale.gray400)

                searchFactory.makeView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.search)
                    .accentColor(.GrayScale.gray400)

                EmptyView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.group)
                    .accentColor(.GrayScale.gray400)

                EmptyView()
                    .toNavigationView()
                    .eraseToAnyView()
                    .tag(TabFlow.setting)
                    .accentColor(.GrayScale.gray400)
            }

            VStack(spacing: 0) {
                Spacer()

                Color.GrayScale.gray300
                    .frame(maxWidth: .infinity, maxHeight: 1)

                tabbarView()
                    .background {
                        Color.white
                            .ignoresSafeArea()
                    }
                    .environment(\.selectionTabbKey, $selection)
            }
        }
        .environment(\.selectionTabbKey, $selection)
    }

    @ViewBuilder
    func tabbarView() -> some View {
        HStack {
            Spacer()

            ForEach(tabItem, id: \.1) { image, title, tag in
                tabItemView(image: image, title: title, tag: tag)
                    .frame(width: 56, height: 60)

                Spacer()
            }
        }
    }

    @ViewBuilder
    func tabItemView(image: Image, title: String, tag: TabFlow) -> some View {
        Button {
            withAnimation {
                selection = tag
            }
        } label: {
            VStack(spacing: 2) {
                image
                    .renderingMode(.template)
                    .foregroundColor(tag == selection ? .GrayScale.gray500 : .GrayScale.gray400)

                Text(title)
                    .gitRankFont(.caption, color: tag == selection ? .GrayScale.gray500 : .GrayScale.gray400)
            }
            .padding(.vertical, 8)
        }
    }
}

extension View {
    func toNavigationView() -> any View {
        NavigationView {
            self
        }
        .navigationViewStyle(.stack)
    }
}
