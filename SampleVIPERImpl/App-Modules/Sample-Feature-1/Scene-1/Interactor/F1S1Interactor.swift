//
//  F1S1Interactor.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

class F1S1Interactor: F1S1PresenterToInteractorProtocol {
    var presenter: F1S1InteractorToPresenterProtocol?
    
    func getTableEntries() {
        DispatchQueue.global(qos: .background).async {
            // call service
            // get entity object
            self.presenter?.onGetTableEntries(entries: F1S1Entity.entries)
        }
    }
}
