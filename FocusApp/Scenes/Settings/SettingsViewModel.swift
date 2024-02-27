//
//  SettingsViewModel.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

import Foundation

protocol SettingsViewDataSource {}

protocol SettingsViewEventSource {}

protocol SettingsViewProtocol: SettingsViewDataSource, SettingsViewEventSource {}

final class SettingsViewModel: BaseViewModel<SettingsRouter>, SettingsViewProtocol {
    
}
