//
//  BaseViewModel.swift
//  FocusApp
//
//  Created by Baki Dikbıyık on 23.02.2024.
//

protocol BaseViewModelDataSource: AnyObject { }

protocol BaseViewModelEventSource: AnyObject {}

protocol BaseViewModeProtocol: BaseViewModelDataSource, BaseViewModelEventSource {}

class BaseViewModel<R: Router>: BaseViewModeProtocol {
    
    let router: R
    
    init(router: R) {
        self.router = router
    }
}


