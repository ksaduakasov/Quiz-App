////
////  CollectionViewCell.swift
////  SimpleQuizApp
////
////  Created by Kalbek Saduakassov on 30.01.2021.
////
//
//import UIKit
//
//class CollectionViewCell: UICollectionViewCell {
//    
//    static let identifier = "CollectionViewCell"
//    
//    @IBOutlet weak var imgView: UIImageView!
//    @IBOutlet weak var questionText: UILabel!
//    @IBOutlet weak var button1: UIButton!
//    @IBOutlet weak var button2: UIButton!
//    @IBOutlet weak var button3: UIButton!
//    @IBOutlet weak var button4: UIButton!
//    
//    var btnsArray = [UIButton]()
//    
//    var question: Questions? {
//        didSet {
//            guard let recievedQuestionData = question else { return }
//            imgView.image = UIImage(named: recievedQuestionData.imgName)
//            questionText.text = recievedQuestionData.questionText
//            button1.setTitle(recievedQuestionData.options[0], for: .normal)
//            button2.setTitle(recievedQuestionData.options[1], for: .normal)
//            button3.setTitle(recievedQuestionData.options[2], for: .normal)
//            button4.setTitle(recievedQuestionData.options[3], for: .normal)
//            
//            if recievedQuestionData.isAnswered {
//                btnsArray[recievedQuestionData.correctAns].backgroundColor=UIColor.green
//                if recievedQuestionData.wrongAns >= 0 {
//                    btnsArray[recievedQuestionData.wrongAns].backgroundColor=UIColor.red
//                }
//            }
//            
//        }
//    }
//    
//    static func nib() -> UINib {
//        return UINib(nibName: "CollectionViewCell", bundle: nil)
//    }
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//}
