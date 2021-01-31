//
//  SecondViewController.swift
//  SimpleQuizApp
//
//  Created by Kalbek Saduakassov on 30.01.2021.
//

import UIKit

class SecondViewController: UIViewController{
    
    var questions = [Questions]()
    var answers = [Answers]()
    var btnsArray = [UIButton]()
   static var results = [Float]()
    
    @IBOutlet weak var questionTextCounter: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var currentQuestionNumber = 1
    var score: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "2viewController_bgImage")!)
        
        constructQuestions()
        showQuestions()
    }
    
    private func constructQuestions() {
        let que1 = Questions(imgName: "nine_tailed", questionText: "Which Hokage sealed the nine-tailed fox inside Naruto?", options: ["1 Hokage", "2 Hokage", "3 Hokage", "4 Hokage"], correctAnswer: 3, wrongAnswer: -1, isAnswered: false)
        let ans1 = Answers(answer: que1.options[3])
        
        let que2 = Questions(imgName: "sacred_scroll", questionText: " Who tricked Naruto into stealing a sacred scroll?", options: ["Iruka", "Mizuki", "Sasuke", "Zabuza"], correctAnswer: 1, wrongAnswer: -1, isAnswered: false)
        let ans2 = Answers(answer: que2.options[1])
        
        let que3 = Questions(imgName: "sasuke_rage", questionText: "Sasuke's goal is gain enough power to kill whom?", options: ["Neji Hyuuga", "Naruto Uzumaki", "Itachi Uchiha", "The Third Hokage"],correctAnswer: 2, wrongAnswer: -1, isAnswered: false)
        let ans3 = Answers(answer: que3.options[2])
        
        let que4 = Questions(imgName: "chidori", questionText: "What does 'Chidori' mean?", options: ["One Thousand birds", "One Hundred Birds", "Ten thousand birds", "ten Hundred Birds"], correctAnswer: 0, wrongAnswer: -1, isAnswered: false)
        let ans4 = Answers(answer: que4.options[0])
        
        let que5 = Questions(imgName: "sharingan", questionText: "The Sharingan is what type of jutsu?", options: ["Ninjutsu", "Taijutsu", "Genjutsu", "Dojutsu"], correctAnswer: 3, wrongAnswer: -1, isAnswered: false)
        let ans5 = Answers(answer: que5.options[3])
        
        questions = [que1, que2, que3, que4, que5]
        answers = [ans1, ans2, ans3, ans4, ans5]
        btnsArray = [button1, button2, button3, button4]
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        constructQuestions()
        showQuestions()
    }
    
    fileprivate func showQuestions() {
        questionTextCounter.text = "Question #\(currentQuestionNumber)"
        imageView.image = UIImage(named: questions[currentQuestionNumber - 1].imgName)
        questionText.text = questions[currentQuestionNumber - 1].questionText
        button1.setTitle(questions[currentQuestionNumber - 1].options[0], for: .normal)
        button2.setTitle(questions[currentQuestionNumber - 1].options[1], for: .normal)
        button3.setTitle(questions[currentQuestionNumber - 1].options[2], for: .normal)
        button4.setTitle(questions[currentQuestionNumber - 1].options[3], for: .normal)
        
//        if questions[currentQuestionNumber - 1].isAnswered {
//            btnsArray[questions[currentQuestionNumber - 1].correctAnswer].backgroundColor=UIColor.green
//            if questions[currentQuestionNumber - 1].wrongAnswer >= 0 {
//                btnsArray[questions[currentQuestionNumber - 1].wrongAnswer].backgroundColor=UIColor.red
//            }
//        }
    }
    
    fileprivate func scoreIncrementer() -> Float {
        return (Float)(100/questions.count)
    }
    
    
    @IBAction func prevButtonDidTapped(_ sender: Any) {
        if self.currentQuestionNumber >= 2 {
            self.currentQuestionNumber -= 1
        } else {
            self.currentQuestionNumber = 1
        }
        viewDidAppear(true)
    }
    
    @IBAction func nextButtonDidTapped(_ sender: Any) {
        if self.currentQuestionNumber <= questions.count - 1{
            self.currentQuestionNumber += 1
        } else {
            SecondViewController.results.append(score)
            print(SecondViewController.results)
//            Foundation.UserDefaults.standard.setValue(score, forKey: "score")

            
            let vc = storyboard?.instantiateViewController(withIdentifier: "resultViewController") as! ResultViewController
            vc.tempReciever = score
            navigationController?.pushViewController(vc, animated: true)
        }
        viewDidAppear(true)
    }
    
    @IBAction func didChooseAnswer(sender: UIButton) {
        questions[currentQuestionNumber - 1].isAnswered = true
        if validate(option: sender.titleLabel!.text!) {
            print("TRUE")
            score += scoreIncrementer()
        }
        else {
//        if questions[currentQuestionNumber - 1].correctAnswer != sender.tag{
//            questions[currentQuestionNumber - 1].wrongAnswer = sender.tag
//            score -= 1
            print("False")
        }
        
    }
    
    func validate(option: String) -> Bool{
        return option == answers[currentQuestionNumber-1].answer
        
    }
}



