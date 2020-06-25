//
//  SceneDelegate.swift
//  SegmentedControlUpdates
//
//  Created by Prathamesh Kowarkar on 25/06/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = rootViewController()
        window.makeKeyAndVisible()
        self.window = window
    }

    func rootViewController() -> UIViewController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [
            TargetActionsViewController(),
            ClosuresViewController(),
        ]
            .map {
                let controller = UINavigationController(rootViewController: $0)
                controller.navigationBar.prefersLargeTitles = true
                return controller
            }
        return tabBarController
    }

}

