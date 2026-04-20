//
//  ViewController.swift
//  Sports Quizz
//
//  Created by Handan on 21.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var choice1: UIButton!
    
    
    @IBOutlet weak var choice2: UIButton!
    
    
    @IBOutlet weak var choice3: UIButton!
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
       
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
                
                let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
                
                if userGotItRight {
                    sender.backgroundColor = UIColor.green
                } else {
                    sender.backgroundColor = UIColor.red
                }
        
        if quizBrain.nextQuestion() {
            
            let alert = UIAlertController(title: "END OF QUIZ! YOU GET \(quizBrain.getScore()) POINTS", message: "DO YOU WANT TO TRY AGAIN?", preferredStyle: .alert)
            
            let yesAction = UIAlertAction(title: "Yes", style: .default) { _ in
                self.quizBrain.score = 0
                
                Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.updateUI), userInfo: nil, repeats: false)
                
            }
            let noAction = UIAlertAction(title: "No", style: .cancel) { _ in
                exit(0)
                
            }
            
            alert.addAction(yesAction)
            alert.addAction(noAction)
            present(alert, animated: true)
            
        } else {
            
            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
            
            
        }
               
               
           }
    
    @objc func updateUI() {
           questionLabel.text = quizBrain.getQuestionText()
           
           let answerChoices = quizBrain.getAnswers()
           choice1.setTitle(answerChoices[0], for: .normal)
           choice2.setTitle(answerChoices[1], for: .normal)
           choice3.setTitle(answerChoices[2], for: .normal)
           
           progressBar.progress = quizBrain.getProgress()
           scoreLabel.text = "Score: \(quizBrain.getScore())"
           
           choice1.backgroundColor = UIColor.clear
           choice2.backgroundColor = UIColor.clear
           
           //Third button needs to be reset too.
           choice3.backgroundColor = UIColor.clear
           
       }

        
        
    }
    




