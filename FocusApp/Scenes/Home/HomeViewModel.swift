//
//  HomeViewModel.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 29.02.2024.
//

import Foundation

protocol HomeViewDataSource {}

protocol HomeViewEventSource {}

protocol HomeViewProtocol: HomeViewDataSource, HomeViewEventSource {}

final class HomeViewModel: BaseViewModel<HomeRouter>, HomeViewProtocol {
    
}
