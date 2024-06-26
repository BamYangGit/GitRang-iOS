import DesignSystem
import SwiftUI
import BaseFeature
import GroupDetailFeatureInterface

struct GroupView: View {
    @Environment(\.tabbarHidden) var tabbarHidden
    @StateObject var viewModel: GroupViewModel
    @State private var width: CGFloat = 100

    private let groupDetailFactory: any GroupDetailFactory

    init(
        viewModel: GroupViewModel,
        groupDetailFactory: any GroupDetailFactory
    ) {
        _viewModel = StateObject(wrappedValue: viewModel)
        self.groupDetailFactory = groupDetailFactory
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(viewModel.models, id: \.self) { model in
                    NavigationLink {
                        groupDetailFactory.makeView(isJoined: true).eraseToAnyView()
                            .onAppear {
                                tabbarHidden.wrappedValue = true
                            }
                            .onDisappear {
                                tabbarHidden.wrappedValue = false
                            }
                            .navigationTitle(model.title)
                            .navigationBarTitleDisplayMode(.inline)
                    } label: {
                        SearchCell(searchModel: model)
                    }
                }
            }
        }
        .navigationTitle("그룹")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: viewModel.getData)
    }

    @ViewBuilder
       func segment() -> some View {
           let isCenter = viewModel.type == .left
           VStack(alignment: isCenter ? .leading: .trailing, spacing: 8) {
               HStack(spacing: 8) {
                   Text("전체")
                       .gitRankFont(.body, color: .GrayScale.gray700)
                       .frame(maxWidth: .infinity)
                       .overlay {
                           GeometryReader { proxy in
                               Color.clear.onAppear {
                                   self.width = proxy.size.width
                               }
                           }
                       }
                       .onTapGesture {
                           viewModel.type = .left
                       }

                   Text("검색")
                       .gitRankFont(.body, color: .GrayScale.gray700)
                       .frame(maxWidth: .infinity)
                       .onTapGesture {
                           viewModel.type = .right
                       }
               }

//               Color.Grays.gray9
//                   .frame(width: width, height: 1)
//                   .animation(.spring(duration: 0.2), value: viewModel.selectedClinic)
           }
//           .padding(.horizontal, 20)
//           .background(Color.Grays.white)
       }
}
