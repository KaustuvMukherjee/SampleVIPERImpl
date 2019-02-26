//
//  AnyToRouterProtocol.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation
import UIKit

protocol AnyToRouterProtocol: AnyObject {
    static func createF1S1()-> F1S1ViewController
    static func createF1S2()-> F1S2ViewController
    static func createF2S1()-> F2S1ViewController
    func pushToF1S2(navigationController:UINavigationController)
    func pushToF2S1(navigationController:UINavigationController)
}
