//
//  SettingsViewController.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import UIKit
import CoreData

final class SettingsViewController: BaseViewController<SettingsViewModel> {
    
    private let settingsView = SettingsView()
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
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

// MARK: - CoreData
extension SettingsViewController {
    
    private func getAllItems() {
        do {
            let items = try context.fetch(Focus.fetchRequest())
        }
        catch {
            // Error
        }
    }
    
    private func createItem(pomodoroPickerCount: String, ShortBreakPickerCount: String, longBreakCount: String) {
        let newItem = Focus(context: context)
        settingsView.pomodoroTextCount = pomodoroPickerCount
        settingsView.shortBreakTextCount = ShortBreakPickerCount
        settingsView.longBreakTextCount = longBreakCount
        
        do {
            try context.save()
        }
        catch {
            // Error
        }
    }
}
