//
//  Transition.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import UIKit

protocol Transition: AnyObject {
    var viewController: UIViewController? { get set }

    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}
