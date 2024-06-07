import SwiftUI

public protocol TabFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
