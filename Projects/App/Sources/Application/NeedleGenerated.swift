

import MainFeature
import MainFeatureInterface
import NeedleFoundation
import OnboardingFeature
import OnboardingFeatureInterface
import RootFeature
import RootFeatureInterface
import SplashFeature
import SplashFeatureInterface
import SwiftUI
import TabFeature
import TabFeatureInterface

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class SplashDependencye0cb7136f2ec3edfd60aProvider: SplashDependency {


    init() {

    }
}
/// ^->AppComponent->SplashComponent
private func factoryace9f05f51d68f4c0677e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SplashDependencye0cb7136f2ec3edfd60aProvider()
}
private class OnboardingDependencyf77d0055983a00cf8835Provider: OnboardingDependency {


    init() {

    }
}
/// ^->AppComponent->OnboardingComponent
private func factory88dc13cc29c5719e2b01e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return OnboardingDependencyf77d0055983a00cf8835Provider()
}
private class MainDependency7c6a5b4738b211b8e155Provider: MainDependency {


    init() {

    }
}
/// ^->AppComponent->MainComponent
private func factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return MainDependency7c6a5b4738b211b8e155Provider()
}
private class RootDependency3944cc797a4a88956fb5Provider: RootDependency {
    var onboardingFactory: any OnboardingFactory {
        return appComponent.onboardingFactory
    }
    var splashFactory: any SplashFactory {
        return appComponent.splashFactory
    }
    var tabFactory: any TabFactory {
        return appComponent.tabFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->RootComponent
private func factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return RootDependency3944cc797a4a88956fb5Provider(appComponent: parent1(component) as! AppComponent)
}
private class TabDependencyfd2d4bddc12c5633d5d4Provider: TabDependency {
    var mainFactory: any MainFactory {
        return appComponent.mainFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->TabComponent
private func factory2f3e96c21b4294db69d7f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return TabDependencyfd2d4bddc12c5633d5d4Provider(appComponent: parent1(component) as! AppComponent)
}

#else
extension AppComponent: Registration {
    public func registerItems() {

        localTable["onboardingFactory-any OnboardingFactory"] = { [unowned self] in self.onboardingFactory as Any }
        localTable["splashFactory-any SplashFactory"] = { [unowned self] in self.splashFactory as Any }
        localTable["tabFactory-any TabFactory"] = { [unowned self] in self.tabFactory as Any }
        localTable["mainFactory-any MainFactory"] = { [unowned self] in self.mainFactory as Any }
    }
}
extension SplashComponent: Registration {
    public func registerItems() {

    }
}
extension OnboardingComponent: Registration {
    public func registerItems() {

    }
}
extension MainComponent: Registration {
    public func registerItems() {

    }
}
extension RootComponent: Registration {
    public func registerItems() {
        keyPathToName[\RootDependency.onboardingFactory] = "onboardingFactory-any OnboardingFactory"
        keyPathToName[\RootDependency.splashFactory] = "splashFactory-any SplashFactory"
        keyPathToName[\RootDependency.tabFactory] = "tabFactory-any TabFactory"
    }
}
extension TabComponent: Registration {
    public func registerItems() {
        keyPathToName[\TabDependency.mainFactory] = "mainFactory-any MainFactory"
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->AppComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->AppComponent->SplashComponent", factoryace9f05f51d68f4c0677e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->OnboardingComponent", factory88dc13cc29c5719e2b01e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MainComponent", factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->TabComponent", factory2f3e96c21b4294db69d7f47b58f8f304c97af4d5)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
