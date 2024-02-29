//
//  HomeTabBarRoute.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 29.02.2024.
//

protocol HomeTabBarRoute {
    func placeOnWindowTabBar()
}

extension HomeTabBarRoute where Self: RouterProtocol {
    
    func placeOnWindowTabBar() {
        let homeTabBarController = HomeTabBarViewController()
        let transition = PlaceOnWindowTransition()
        
        open(homeTabBarController, transition: transition)
    }
}
