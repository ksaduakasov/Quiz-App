//
//  HistoryViewController.swift
//  SimpleQuizApp
//
//  Created by Kalbek Saduakassov on 31.01.2021.
//

import UIKit

class HistoryViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "resultViewController") as! ResultViewController
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.tableFooterView = UIView()
    }
    


}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SecondViewController.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.receivedScore.text = "\(SecondViewController.results[indexPath.row])"
        cell.maximumScore.text = "/ 100"
        return cell
    }
    
    
}
