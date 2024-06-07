import SwiftUI
import NeedleFoundation
import RootFeatureInterface
import OnboardingFeatureInterface
import SplashFeatureInterface
import TabFeatureInterface

public protocol RootDependency: Dependency {
    var onboardingFactory: any OnboardingFactory { get }
    var splashFactory: any SplashFactory { get }
    var tabFactory: any TabFactory { get }
}

public final class RootComponent: Component<RootDependency>, RootFactory {
    public func makeView() -> some View {
        RootView(
            onboardingFactory: dependency.onboardingFactory,
            splashFactory: dependency.splashFactory,
            tabFactory: dependency.tabFactory
        )
    }
}
