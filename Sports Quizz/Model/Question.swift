//
//  Question.swift
//  Sports Quizz
//
//  Created by Handan on 21.02.2024.
//

import Foundation


struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
    
    

