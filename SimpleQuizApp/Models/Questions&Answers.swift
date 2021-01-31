//
//  Questions.swift
//  SimpleQuizApp
//
//  Created by Kalbek Saduakassov on 30.01.2021.
//

import Foundation


struct Questions: Codable {
    let imgName: String
    let questionText: String
    let options: [String]
    let correctAnswer: Int
    var wrongAnswer: Int
    var isAnswered: Bool
}

struct Answers: Codable {
    let answer: String
}
