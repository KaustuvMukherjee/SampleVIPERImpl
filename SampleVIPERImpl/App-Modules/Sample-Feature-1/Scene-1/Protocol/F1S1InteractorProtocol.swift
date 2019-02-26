//
//  F1S1InteractorProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

protocol F1S1PresenterToInteractorProtocol: AnyObject {
    var presenter: F1S1InteractorToPresenterProtocol? {get set}
    func getTableEntries()
}
