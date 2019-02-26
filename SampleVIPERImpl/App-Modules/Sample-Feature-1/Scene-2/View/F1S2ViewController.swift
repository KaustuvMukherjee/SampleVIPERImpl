//
//  F1S2ViewController.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import UIKit

class F1S2ViewController: UIViewController {
    
    var presenter: F1S2ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Feature1-Scene2"
        self.view.backgroundColor = UIColor.darkGray
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



extension F1S2ViewController: F1S2PresenterToViewProtocol {
    
}
