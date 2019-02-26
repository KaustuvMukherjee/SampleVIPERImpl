//
//  F2S1PresenterProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

protocol F2S1ViewToPresenterProtocol: AnyObject {
    var view: F2S1PresenterToViewProtocol? {get set}
    var interactor: F2S1PresenterToInteractorProtocol? {get set}
    var router: AnyToRouterProtocol? {get set}
}

protocol F2S1InteractorToPresenterProtocol: AnyObject {
}
