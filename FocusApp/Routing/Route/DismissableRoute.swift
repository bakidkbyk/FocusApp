//
//  DismissableRoute.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import Foundation

protocol DismissableRoute {
    func dismiss(isAnimated: Bool, completion: VoidClosure?)
}

extension DismissableRoute where Self: RouterProtocol {
    func dismiss(isAnimated: Bool = true, completion: VoidClosure? = nil) {
        guard let viewController = self.viewController else {
            assertionFailure("Nothing to close.")
            return
        }
        viewController.dismiss(animated: isAnimated, completion: completion)
    }
}
