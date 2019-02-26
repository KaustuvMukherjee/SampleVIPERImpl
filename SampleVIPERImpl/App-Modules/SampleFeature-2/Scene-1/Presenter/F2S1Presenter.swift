//
//  F2S1Presenter.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

class F2S1Presenter: F2S1ViewToPresenterProtocol {
    var view: F2S1PresenterToViewProtocol?
    var interactor: F2S1PresenterToInteractorProtocol?
    var router: AnyToRouterProtocol?
}

extension F2S1Presenter: F2S1InteractorToPresenterProtocol {
    
}
