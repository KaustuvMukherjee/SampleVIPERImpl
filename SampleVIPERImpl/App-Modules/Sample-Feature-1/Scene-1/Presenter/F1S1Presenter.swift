//
//  F1S1Presenter.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation
import UIKit

class F1S1Presenter: F1S1ViewToPresenterProtocol {
    var view: F1S1PresenterToViewProtocol?
    var interactor: F1S1PresenterToInteractorProtocol?
    var router: AnyToRouterProtocol?
    
    func getTableEntries() {
        interactor?.getTableEntries()
    }
}

extension F1S1Presenter: F1S1InteractorToPresenterProtocol {
    
    func showF1S2Controller(navigationController: UINavigationController) {
        router?.pushToF1S2(navigationController: navigationController)
    }
    
    func showF2S1Controller(navigationController: UINavigationController) {
        router?.pushToF2S1(navigationController: navigationController)
    }
    
    func onGetTableEntries(entries: [(String)]) {
        view?.onGetTableEntries(entries: entries)
    }
}
