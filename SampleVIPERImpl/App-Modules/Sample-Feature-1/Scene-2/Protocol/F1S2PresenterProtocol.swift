//
//  F1S2PresenterProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

protocol F1S2ViewToPresenterProtocol: AnyObject {
    var view: F1S2PresenterToViewProtocol? {get set}
    var interactor: F1S2PresenterToInteractorProtocol? {get set}
    var router: AnyToRouterProtocol? {get set}
}

protocol F1S2InteractorToPresenterProtocol: AnyObject {
}
