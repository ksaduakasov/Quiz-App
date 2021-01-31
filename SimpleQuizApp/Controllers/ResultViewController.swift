//
//  ResultViewController.swift
//  SimpleQuizApp
//
//  Created by Kalbek Saduakassov on 31.01.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet public weak var scoreLabel: UILabel!
    
    public var tempReciever: Float?
    
    override func viewDidAppear(_ animated: Bool) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
//        print(vc.results)
        print(SecondViewController.results)
//        let vc = storyboard?.instantiateViewController(withIdentifier: "historyViewController") as! HistoryViewController
//        print(vc.scores)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "resultPageNaruto")!)
        scoreLabel.text = "\(tempReciever!)%"
        
    }
    
    @IBAction func backToHomeDidTapped(_ sender: Any) {
        navigationController?.pushViewController(storyboard?.instantiateViewController(withIdentifier: "viewController") as! ViewController, animated: true)
    }
    
}
