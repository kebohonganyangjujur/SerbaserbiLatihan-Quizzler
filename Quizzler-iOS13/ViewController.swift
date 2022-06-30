//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var proggressBar: UIProgressView!
    
    var questionNumber = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func choiceGetPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let correctAnswer = quiz[questionNumber].answer
        
        if userAnswer == correctAnswer {
            sender.backgroundColor = UIColor.green
            score += 1
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
        proggressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector (updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionText.text = quiz[questionNumber].text
        choice1.setTitle(quiz[questionNumber].choices[0], for: .normal)
        choice2.setTitle(quiz[questionNumber].choices[1], for: .normal)
        choice3.setTitle(quiz[questionNumber].choices[2], for: .normal)
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        scoreLabel.text = "Score: \(score)"
    }
    
    
}

