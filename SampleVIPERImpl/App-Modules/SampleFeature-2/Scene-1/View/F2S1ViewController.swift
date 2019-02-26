//
//  F2S1ViewController.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import UIKit

class F2S1ViewController: UIViewController {
    
    var presenter: F2S1ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Feature2-Scene1"
        self.view.backgroundColor = UIColor.black
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



extension F2S1ViewController: F2S1PresenterToViewProtocol {
    
}
