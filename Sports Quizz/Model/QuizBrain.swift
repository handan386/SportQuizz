//
//  QuizBrain.swift
//  Sports Quizz
//
//  Created by Handan on 21.02.2024.
//

import Foundation

struct QuizBrain {
    
    
    
    var questionNumber = 0
    var score = 0
    
    
    let quiz = [
        Question (q: "Which footballer holds the record for the highest number of assists in the Premier League?", a: ["Cesc Fabregas", "Ryan Giggs", "Frank Lampard"], correctAnswer: "Ryan Giggs"),
        Question (q: "Chelsea beat which team 8-0 to secure the 2009-10 Premier League title on the final day of the season?", a: ["Hull","Wigan","Norwich"], correctAnswer: "Wigan"),
    
        Question (q: "Who is Beşiktaş's foreign player who scored the most goals in total in the Super League?", a: ["Pascal Nouma","Daniel Amokachi","Bobo"], correctAnswer: "Bobo"),
        Question (q: "What is the name of the tournament introduced in 2017 as tennis's version of the Ryder Cup?", a: ["The Laver Cup","Davis Cup","United Cup"], correctAnswer: "The Laver Cup"),
        Question (q: "What score did Beşiktaş, with its squad including Metin Ali Feyyaz, beat Adana Demirspor in the 1989-1990 season?", a: ["4-2","10-0","7-1"], correctAnswer: "10-0"),
        Question (q: "Who is the current top scorer in the UEFA Champions League?", a: ["Thierry Henry","Cristiano Ronaldo","Robert Lewandowski"], correctAnswer: "Cristiano Ronaldo"),
        Question (q: "Who did Emma Raducanu beat in the 2021 US Open final to secure an astonishing title win?", a: ["Petra Kvitova","Ana Ivanovic","Leylah Annie Fernandez"], correctAnswer: "Leylah Annie Fernandez"),
        Question (q: "Manchester United beat which team in the 2017 Europa League final?", a: ["Borussia Dortmund","Chelsea","Ajax"], correctAnswer: "Ajax"),
        Question (q: "Steffi Graf won all four Grand Slams on multiple occasions – but which did she win most times?", a: ["Wimbledon","Grand Slam","Roland Garros"], correctAnswer: "Wimbledon"),
        Question (q: "Which team has won the African Cup of Nations a record 7 times?", a: ["Senegal","Cameroon","Egypt"], correctAnswer: "Egypt"),
        
        Question (q: "What is the best basketball player Luka Doncic's NBA history record?", a: ["EuroLeague MVP","EuroLeague Rising Star","Western Conference MVP"], correctAnswer: "Western Conference MVP"),
        Question (q: "Jamie Murray won the Wimbledon Mixed Doubles titles in both 2007 and 2017. Can you name his partners for each occasion?", a: ["Clare Balding, Amélie Mauresmo","Kim Clijsters, Viktoriya Azarenka","Jelena Jankovic, Martina Hingis"], correctAnswer: "Jelena Jankovic, Martina Hingis"),
        Question (q: "Seven-times world champion Lewis Hamilton is reportedly set to join Ferrari in a shock F1 move. Who was the last Ferrari driver to win the driver's championship?", a: ["Michael Schumacher","Sebastian Vettel","Kimi Räikkönen"], correctAnswer: "Kimi Räikkönen"),
                 
    ]
    
    func getQuestionText() -> String {
            return quiz[questionNumber].text
        }
    //Need a way of fetching the answer choices.
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() -> Bool {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            return false
        } else {
            questionNumber = 0
            return true
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            
            return false
        }
    }
}
    
    





