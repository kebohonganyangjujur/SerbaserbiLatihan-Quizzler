//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var question = Question(q: <#T##String#>, a: <#T##[String]#>, correctAnswer: <#T##String#>)
    
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
        
    }
    
    questionText.text =
    @IBAction func choiceGetPressed(_ sender: UIButton) {
    }
    
}

