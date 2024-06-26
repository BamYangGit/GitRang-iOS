

import GroupDetailFeature
import GroupDetailFeatureInterface
import GroupFeature
import GroupFeatureInterface
import MainFeature
import MainFeatureInterface
import NeedleFoundation
import OnboardingFeature
import OnboardingFeatureInterface
import RootFeature
import RootFeatureInterface
import SearchFeature
import SearchFeatureInterface
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

private class GroupDependencyb81caecbc3e55b3b6fd1Provider: GroupDependency {
    var groupDetailFactory: any GroupDetailFactory {
        return appComponent.groupDetailFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->GroupComponent
private func factory8df0e13aa25ecdf90fdef47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return GroupDependencyb81caecbc3e55b3b6fd1Provider(appComponent: parent1(component) as! AppComponent)
}
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
private class SearchDependencya86903a2c751a4f762e8Provider: SearchDependency {
    var groupDetailFactory: any GroupDetailFactory {
        return appComponent.groupDetailFactory
    }
    private let appComponent: AppComponent
    init(appComponent: AppComponent) {
        self.appComponent = appComponent
    }
}
/// ^->AppComponent->SearchComponent
private func factorye3d049458b2ccbbcb3b6f47b58f8f304c97af4d5(_ component: NeedleFoundation.Scope) -> AnyObject {
    return SearchDependencya86903a2c751a4f762e8Provider(appComponent: parent1(component) as! AppComponent)
}
private class GroupDetailDependency7149c71ed78f233ae64cProvider: GroupDetailDependency {


    init() {

    }
}
/// ^->AppComponent->GroupDetailComponent
private func factoryc59f986faef518e90750e3b0c44298fc1c149afb(_ component: NeedleFoundation.Scope) -> AnyObject {
    return GroupDetailDependency7149c71ed78f233ae64cProvider()
}
private class TabDependencyfd2d4bddc12c5633d5d4Provider: TabDependency {
    var mainFactory: any MainFactory {
        return appComponent.mainFactory
    }
    var searchFactory: any SearchFactory {
        return appComponent.searchFactory
    }
    var groupFactory: any GroupFactory {
        return appComponent.groupFactory
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
        localTable["searchFactory-any SearchFactory"] = { [unowned self] in self.searchFactory as Any }
        localTable["groupFactory-any GroupFactory"] = { [unowned self] in self.groupFactory as Any }
        localTable["groupDetailFactory-any GroupDetailFactory"] = { [unowned self] in self.groupDetailFactory as Any }
    }
}
extension GroupComponent: Registration {
    public func registerItems() {
        keyPathToName[\GroupDependency.groupDetailFactory] = "groupDetailFactory-any GroupDetailFactory"
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
extension SearchComponent: Registration {
    public func registerItems() {
        keyPathToName[\SearchDependency.groupDetailFactory] = "groupDetailFactory-any GroupDetailFactory"
    }
}
extension GroupDetailComponent: Registration {
    public func registerItems() {

    }
}
extension TabComponent: Registration {
    public func registerItems() {
        keyPathToName[\TabDependency.mainFactory] = "mainFactory-any MainFactory"
        keyPathToName[\TabDependency.searchFactory] = "searchFactory-any SearchFactory"
        keyPathToName[\TabDependency.groupFactory] = "groupFactory-any GroupFactory"
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
    registerProviderFactory("^->AppComponent->GroupComponent", factory8df0e13aa25ecdf90fdef47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SplashComponent", factoryace9f05f51d68f4c0677e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->OnboardingComponent", factory88dc13cc29c5719e2b01e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->MainComponent", factoryc9274e46e78e70f29c54e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->RootComponent", factory264bfc4d4cb6b0629b40f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->SearchComponent", factorye3d049458b2ccbbcb3b6f47b58f8f304c97af4d5)
    registerProviderFactory("^->AppComponent->GroupDetailComponent", factoryc59f986faef518e90750e3b0c44298fc1c149afb)
    registerProviderFactory("^->AppComponent->TabComponent", factory2f3e96c21b4294db69d7f47b58f8f304c97af4d5)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
