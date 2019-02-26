//
//  F1S1PresenterProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation
import UIKit

protocol F1S1ViewToPresenterProtocol: AnyObject {
    var view: F1S1PresenterToViewProtocol? {get set}
    var interactor: F1S1PresenterToInteractorProtocol? {get set}
    var router: AnyToRouterProtocol? {get set}
    
    func showF1S2Controller(navigationController: UINavigationController)
    func showF2S1Controller(navigationController: UINavigationController)
    
    func getTableEntries()
}

protocol F1S1InteractorToPresenterProtocol: AnyObject {
    func onGetTableEntries(entries: [(String)])
}
