//
//  F1S1ViewController.swift
//  SampleVIPERImpl
//
//  Created by Kaustuv Mukherjee on 2/25/19.
//

import UIKit

class F1S1ViewController: UIViewController {
    
    var presenter: F1S1ViewToPresenterProtocol?
    var tableEntries: [String] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Feature1-Scene1"
        self.view.backgroundColor = UIColor.lightGray
        tableView.delegate = self
        tableView.dataSource = self
        
        presenter?.getTableEntries()
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

extension F1S1ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableEntries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "F1S1Cell", for: indexPath)
        if(indexPath.row < self.tableEntries.count) {
            cell.textLabel?.text = self.tableEntries[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 0) {
            presenter?.showF1S2Controller(navigationController: self.navigationController!)
        } else if (indexPath.row == 1) {
            presenter?.showF2S1Controller(navigationController: self.navigationController!)
        } else {
            // do nothing
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension F1S1ViewController: F1S1PresenterToViewProtocol {
    func onGetTableEntries(entries: [(String)]) {
        DispatchQueue.main.async {
            self.tableEntries = entries
            self.tableView.reloadData()
        }
    }
}
