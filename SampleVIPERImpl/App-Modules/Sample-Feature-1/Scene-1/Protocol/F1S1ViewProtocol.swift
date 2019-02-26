//
//  F1S1ViewProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation

protocol F1S1PresenterToViewProtocol: AnyObject {
    func onGetTableEntries(entries: [(String)])
}
