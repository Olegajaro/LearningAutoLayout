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
        
        let anchorViewController = MainController(labs: anchorsLabs,
                                                      navBarTitle: "Anchors")
        
        let rootLabs = [
            Lab(name: "Anchors", viewController: anchorViewController)
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

