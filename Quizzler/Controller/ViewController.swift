//
//  ViewController.swift
//  Quizzler
//
//  Created by Agustin Carro on 12/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTracker: UILabel!
    @IBOutlet weak var lastScoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        option1Button.setTitle(quizBrain.getOption1(), for: UIControl.State())
        option2Button.setTitle(quizBrain.getOption2(), for: UIControl.State())
        option3Button.setTitle(quizBrain.getOption3(), for: UIControl.State())
        progressBar.progress = quizBrain.getProgress()
        questionTracker.text = "Question: \(quizBrain.questionNumber + 1)/\(quizBrain.quiz.count)"
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        lastScoreLabel.text = "Last Score: \(quizBrain.getLastScore())"
        
        option1Button.backgroundColor = UIColor.clear
        option2Button.backgroundColor = UIColor.clear
        option3Button.backgroundColor = UIColor.clear
    }

}


























