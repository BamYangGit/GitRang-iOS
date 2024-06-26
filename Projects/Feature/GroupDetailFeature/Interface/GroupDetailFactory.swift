import SwiftUI

public protocol GroupDetailFactory {
    associatedtype SomeView: View
    func makeView(isJoined: Bool) -> SomeView
}
