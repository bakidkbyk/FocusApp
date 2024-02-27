//
//  SettingsViewController.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import UIKit

final class SettingsViewController: BaseViewController<SettingsViewModel> {
    
    private let settingsView = SettingsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        configureContents()
    }
}

// MARK: - UILayout
extension SettingsViewController {
    
    private func addSubviews() {
        view.addSubview(settingsView)
        settingsView.leadingToSuperview().constant = 38
        settingsView.trailingToSuperview().constant = -38
        settingsView.centerYToSuperview()
        settingsView.height(350)
    }
}

// MARK: - Configure And Localize
extension SettingsViewController {
    
    private func configureContents() {
        view.backgroundColor = .blue
        settingsView.layer.cornerRadius = CGFloat(0.5)
    }
}
