import NeedleFoundation
import SwiftUI
import RootFeature
import RootFeatureInterface
import OnboardingFeatureInterface
import OnboardingFeature
import SplashFeatureInterface
import SplashFeature
import TabFeatureInterface
import TabFeature
import MainFeatureInterface
import MainFeature

public final class AppComponent: BootstrapComponent {

    public func makeRootView() -> some View {
        rootComponent.makeView()
    }

    var rootComponent: RootComponent {
        RootComponent(parent: self)
    }
}

public extension AppComponent {
    var onboardingFactory: any OnboardingFactory {
        OnboardingComponent(parent: self)
    }

    var splashFactory: any SplashFactory {
         SplashComponent(parent: self)
    }


    var tabFactory: any TabFactory {
        TabComponent(parent: self)
    }

    var mainFactory: any MainFactory {
        MainComponent(parent: self)
    }
}
