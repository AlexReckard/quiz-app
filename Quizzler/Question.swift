//
//  Question.swift
//  Quizzler
//
//  Created by Alex Reckard on 8/24/19.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer : Bool) {
        questionText = text;
        answer = correctAnswer;
    }
    
}
