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
        
        let distributionsLabs = [
            Lab(name: "Fill", viewController: Fill()),
            Lab(name: "Fill Equally", viewController: FillEqually()),
            Lab(name: "Equal Spacing", viewController: EqualSpacing()),
            Lab(name: "Equal Centering", viewController: EqualCentering()),
            Lab(name: "CHRC - Fill", viewController: CHRCFill())
        ]
        
        let distributionController = MainController(
            labs: distributionsLabs, navBarTitle: "Distributions"
        )
        
        let stackViewLabs = [
            Lab(name: "Custom", viewController: CustomView()),
            Lab(name: "Scrollable", viewController: ScrollableView()),
            Lab(name: "Padding", viewController: PaddingView()),
            Lab(name: "Spacer", viewController: StackSpacerView()),
            Lab(name: "Distributions", viewController: distributionController)
        ]
        
        let orientationsLabs = [
            Lab(name: "Detect Orientation", viewController: OrientationView()),
            Lab(name: "Adjust with constraints", viewController: AdjustConstraintsView()),
            Lab(name: "Adjust with spacers", viewController: AdjustSpacersView())
        ]
        
        let adaptingLayoutLabs = [
            Lab(name: "Constants", viewController: Constants()),
            Lab(name: "Constraints", viewController: Constraints()),
            Lab(name: "Visibility", viewController: Visibility())
        ]
        
        let anchorViewController = MainController(labs: anchorsLabs,
                                                      navBarTitle: "Anchors")
        let intrinsicViewContoller = MainController(labs: intrinsicLabs,
                                                    navBarTitle: "Intrinsic Content Size")
        let stackViewController = MainController(labs: stackViewLabs,
                                                 navBarTitle: "Stack Views")
        let adaptingLayoutsController = MainController(labs: adaptingLayoutLabs,
                                                       navBarTitle: "Adapting Layouts")
        let orientaionsViewController = MainController(labs: orientationsLabs,
                                                       navBarTitle: "Orientations")
        
        let rootLabs = [
            Lab(name: "Anchors", viewController: anchorViewController),
            Lab(name: "Intrinsic Content Size", viewController: intrinsicViewContoller),
            Lab(name: "Stack Views", viewController: stackViewController),
            Lab(name: "Orientaions", viewController: orientaionsViewController),
            Lab(name: "Adapting Layouts", viewController: adaptingLayoutsController)
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

