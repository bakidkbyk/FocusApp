//
//  SettingsRoute.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

protocol SettingsRoute {
    func presentSettings()
}

extension SettingsRoute where Self: RouterProtocol {
    
    func presentSettings() {
        let router = SettingsRouter()
        let viewModel = SettingsViewModel(router: router)
        let viewController = SettingsViewController(viewModel: viewModel)
        
        let transition = PlaceOnWindowTransition()
        router.viewController = viewController
        router.openTransition = transition
        
        open(viewController, transition: transition)
    }
}
