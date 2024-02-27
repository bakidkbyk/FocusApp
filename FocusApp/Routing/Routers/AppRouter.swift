//
//  AppRouter.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import UIKit

final class AppRouter: Router, AppRouter.Routes {
    
    typealias Routes = SettingsRoute
    
    static let shared = AppRouter()
    
    func startApp() {
        presentSettings()
    }

    private func topViewController() -> UIViewController? {
        let keyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow })
        if var topController = keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        return nil
    }
}
