//
//  F2S1InteractorProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

protocol F2S1PresenterToInteractorProtocol: AnyObject {
    var presenter: F2S1InteractorToPresenterProtocol? {get set}
}
