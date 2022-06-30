//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by developer1 on 30/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {

    let text: String
    let choices: [String]
    let answer: String
    
    init(q: String, a:[String], correctAnswer: String) {
        text = q
        choices = a
        answer = correctAnswer
    }
    
}





