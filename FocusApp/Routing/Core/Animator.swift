//
//  Animator.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
