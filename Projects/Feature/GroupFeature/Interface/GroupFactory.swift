import SwiftUI

public protocol GroupFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
