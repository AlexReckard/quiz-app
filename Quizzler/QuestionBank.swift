//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Alex Reckard on 8/25/19.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "It’s impossible to hum while you hold your nose.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "An Octopus has 5 hearts.", correctAnswer: false))
        
        list.append(Question(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        list.append(Question(text: "German chocolate cake originates from Germany.", correctAnswer: false))
        
        list.append(Question(text: "The owner of the company that makes Segways died after accidentally driving his Segway off a cliff.", correctAnswer: true))
        
        list.append(Question(text: "Honey is made from nectar and bee vomit.", correctAnswer: true))
        
        list.append(Question(text: "There are more cells of bacteria in your body than there are human cells.", correctAnswer: true))
        
        list.append(Question(text: "You can't taste bitter foods with the front of your tongue, only the back.", correctAnswer: false))
        
        list.append(Question(text: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        list.append(Question(text: "The Great Wall of China is not the only human-made object visible from space.", correctAnswer: true))
        
        list.append(Question(text: "Chewing gum takes 7 years to fully digest.", correctAnswer: false))
        
        list.append(Question(text: "You're more likely to die from a falling coconut than from a shark attack.", correctAnswer: true))
        
        list.append(Question(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        list.append(Question(text: "Popsicles were invented by an 11-year-old.", correctAnswer: true))

        list.append(Question(text: "In Japan they grow triangular watermelons.", correctAnswer: false))
        
///////// 15 questions
    }
    
}
