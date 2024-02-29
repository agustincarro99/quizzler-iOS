//
//  Question.swift
//  Quizzler
//
//  Created by Agustin Carro on 12/07/2021.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correct: String
    
    init(q: String, ans: [String], correctAnswer: String) {
        text = q
        answer = ans
        correct = correctAnswer
    }
}

    
