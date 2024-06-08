import SwiftUI

public protocol SearchFactory {
    associatedtype SomeView: View
    func makeView() -> SomeView
}
