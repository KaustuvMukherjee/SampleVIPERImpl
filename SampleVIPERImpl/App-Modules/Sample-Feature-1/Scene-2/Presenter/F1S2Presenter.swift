//
//  F1S2Presenter.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

class F1S2Presenter: F1S2ViewToPresenterProtocol {
    var view: F1S2PresenterToViewProtocol?
    var interactor: F1S2PresenterToInteractorProtocol?
    var router: AnyToRouterProtocol?
}

extension F1S2Presenter: F1S2InteractorToPresenterProtocol {
}
