//
//  ViewController.swift
//  SimpleQuizApp
//
//  Created by Kalbek Saduakassov on 30.01.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "historyViewController") as! HistoryViewController
//        print(vc.scores)
//        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//        print(vc.results)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "naruto_firstPage")!)
        
        
    }
    
    
    @IBAction func startDidTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func resultDidTapped(_ sender: Any) {
        navigationController?.pushViewController((storyboard?.instantiateViewController(withIdentifier: "historyViewController"))!, animated: true)
    }
}

