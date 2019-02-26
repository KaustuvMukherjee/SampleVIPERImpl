//
//  F1S2InteractorProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

protocol F1S2PresenterToInteractorProtocol: AnyObject {
    var presenter: F1S2InteractorToPresenterProtocol? {get set}
}
