//
//  HomeTabBarViewController.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 29.02.2024.
//

import UIKit

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .blue
        tabBar.backgroundColor = .red

        let homeViewController = createHomeViewController()
        let settingsViewController = createSettingsController()

        viewControllers = [
            homeViewController,
            settingsViewController
        ]
    }
    
    private func createHomeViewController() -> UINavigationController {
        let homeRouter = HomeRouter()
        let homeViewModel = HomeViewModel(router: homeRouter)
        let homeViewController = HomeViewController(viewModel: homeViewModel)
        let navigationController = UINavigationController(rootViewController: homeViewController)
        navigationController.tabBarItem.image = UIImage(systemName: "timer")
        homeRouter.viewController = homeViewController
        return navigationController
    }
    
    private func createSettingsController() -> UINavigationController {
        let settingsRouter = SettingsRouter()
        let settingsViewModel = SettingsViewModel(router: settingsRouter)
        let settingsViewController = SettingsViewController(viewModel: settingsViewModel)
        let navigationController = UINavigationController(rootViewController: settingsViewController)
        navigationController.tabBarItem.image = UIImage(systemName: "gearshape")
        settingsRouter.viewController = settingsViewController
        return navigationController
    }
}
