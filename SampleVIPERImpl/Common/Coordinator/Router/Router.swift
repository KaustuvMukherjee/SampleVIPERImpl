//
//  Router.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import Foundation
import UIKit

class Router: AnyToRouterProtocol {
    static func createF1S1() -> F1S1ViewController {
        
        let view = storyboard(name: "F1S1").instantiateViewController(withIdentifier: "F1S1View") as! F1S1ViewController
        let interactor: F1S1PresenterToInteractorProtocol = F1S1Interactor()
        let presenter: F1S1ViewToPresenterProtocol & F1S1InteractorToPresenterProtocol = F1S1Presenter()
        let router: AnyToRouterProtocol = Router()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        return view
    }
    
    static func createF1S2() -> F1S2ViewController {
        
        let view = storyboard(name: "F1S2").instantiateViewController(withIdentifier: "F1S2View") as! F1S2ViewController
        let interactor: F1S2PresenterToInteractorProtocol = F1S2Interactor()
        let presenter: F1S2ViewToPresenterProtocol & F1S2InteractorToPresenterProtocol = F1S2Presenter()
        let router: AnyToRouterProtocol = Router()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        return view
    }
    
    static func createF2S1() -> F2S1ViewController {
        
        let view = storyboard(name: "F2S1").instantiateViewController(withIdentifier: "F2S1View") as! F2S1ViewController
        let interactor: F2S1PresenterToInteractorProtocol = F2S1Interactor()
        let presenter: F2S1ViewToPresenterProtocol & F2S1InteractorToPresenterProtocol = F2S1Presenter()
        let router: AnyToRouterProtocol = Router()
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        return view
    }
    
    func pushToF1S2(navigationController:UINavigationController) {
        let f1s2Scene = Router.createF1S2()
        navigationController.pushViewController(f1s2Scene,animated: true)
    }
    
    func pushToF2S1(navigationController:UINavigationController) {
        let f2s1Scene = Router.createF2S1()
        navigationController.pushViewController(f2s1Scene, animated: true)
    }
    
    static func storyboard(name: String) -> UIStoryboard {
        return UIStoryboard(name:name, bundle: Bundle.main)
    }
}
