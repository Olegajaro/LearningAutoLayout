//
//  AppDelegate.swift
//  LearningAutoLayout
//
//  Created by Олег Федоров on 29.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        
        let anchorsLabs = [
            Lab(name: "Basic Anchors", viewController: BasicAnchors()),
            Lab(name: "Safe Area Guide", viewController: SafeAreaGuide()),
            Lab(name: "Layout Margins", viewController: LayoutMargins()),
            Lab(name: "Spacer Views", viewController: SpacerViews()),
            Lab(name: "Readeble Content Guide", viewController: ReadebleContentGuide())
        ]
        
        let intrinsicLabs = [
            Lab(name: "Override Label", viewController: OverrideLabel()),
            Lab(name: "CHCR - Form", viewController: CHCRForm()),
            Lab(name: "CHCR - Image", viewController: CHCRImage())
        ]
        
        let anchorViewController = MainController(labs: anchorsLabs,
                                                      navBarTitle: "Anchors")
        let intrinsicViewContoller = MainController(labs: intrinsicLabs,
                                                    navBarTitle: "Intrinsic Content Size")
        
        let rootLabs = [
            Lab(name: "Anchors", viewController: anchorViewController),
            Lab(name: "Intrinsic Content Size", viewController: intrinsicViewContoller)
        ]
        
        let rootViewController = MainController(
            labs: rootLabs, navBarTitle: "Example"
        )
        let navigationController = UINavigationController(
            rootViewController: rootViewController
        )
        
        window?.rootViewController = navigationController
        
        return true
    }
}

