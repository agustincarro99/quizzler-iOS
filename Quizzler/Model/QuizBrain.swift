//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Agustin Carro on 12/07/2021.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    var lastScore = 0
    
    
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", ans: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", ans: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", ans: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", ans: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", ans: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", ans: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", ans: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", ans: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", ans: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", ans: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    func getOption1() -> String {
        return quiz[questionNumber].answer[0]
    }
    
    func getOption2() -> String {
        return quiz[questionNumber].answer[1]
    }
    
    func getOption3() -> String {
        return quiz[questionNumber].answer[2]
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getLastScore() -> Int {
        return lastScore
    }
    
     mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            lastScore = score
            score = 0
        }
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correct {
            score += 1
            return true
        } else {
            return false
        }
    }
}

