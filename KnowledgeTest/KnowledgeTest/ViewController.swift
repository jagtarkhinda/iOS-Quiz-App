//
//  ViewController.swift
//  KnowledgeTest
//
//  Created by Jagtar Singh on 2018-07-19.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import UIKit

var count = 0

class ViewController: UIViewController {
    
    //Main View Outlets
    @IBOutlet weak var quesLabel: UILabel!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var lastScreen: UIButton!
    
    var ques:[Int] = []
    var queCnt = 0

    // To keep track of current Question Number
    var quesNumber = 0
    // Temporarily used to see the correct answers
    override func viewDidLoad() {
        lastScreen.isHidden = true
        super.viewDidLoad()
        question_selection()
        print(ques)
        
        NextQuestion(quesNumber: ques[0])
        //quesLabel.displayLbel()
        btn0.display()
        btn1.display()
        btn2.display()
        btn3.display()
        lastScreen.display()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //All Questions in questions array
    var questions = ["who is the founder of Swift Language?",
                     "What is the name of the latest voice command system of Google?",
                     "What is the speed of CPU in the case of Minicomputer?",
                     "The program change that makes up the operating system, along with the associated utility program change, as distinct from an application program is?",
                     "When was the first paging system used?",
                     "'.MOV' extension refers usually to what kind of file?",
                     "Who built the world's first binary digit computer: Z1...?",
                     "What does EPROM stand for?",
                     "Where is the headquarters of Intel located?",
                     "What is the speed of CPU in the case of Super computer?"]
    //All Anssers in allAnswers array
    var allAnswers = [["James Gosling", "Larry Wall", "Chris Lattner", "Brad Cox"],
                      ["Google Keep", "Cortana", "Wunderlist", "Alexa"],
                      ["20-50 MIPS", "1-10 MIPS", "30-100 MIPS", "400-10000 MIPS"],
                      ["Utility Software", "Open Source Software", "System software", "Proprietary Software"],
                      ["1954", "1956", "1959", "1957"],
                      ["Image file", "Animation/movie file", "Audio file", "MS Office document"],
                      ["Konrad Zuse", "Ken Thompson", "Alan Turing", "George Boole"],
                      ["Electric Programmable Read Only Memory", "Evaluable Philotic Random Optic Memory", "Erasable Programmable Read Only Memory", "Every Person Requires One Mind"],
                      ["Redmond, Washington", "Tucson, Arizona", "Santa Clara, California", "Richmond, Virginia"],
                      ["20-50 MIPS", "1-10 MIPS", "30-100 MIPS", "400-10000 MIPS"]]
    //corrent answer index for each question
    var correctAnswer = [2,1,0,3,3,1,0,2,2,3]
    
    func question_selection(){
        
        var randomQuestion = Int(arc4random_uniform(UInt32(11) - 1 ))
        for _ in 0...4 {
            if ques.contains(randomQuestion) {
                while ques.contains(randomQuestion) {
                randomQuestion = Int(arc4random_uniform(UInt32(11) - 1 ))
                }
                ques.append(randomQuestion)
            } else {
                ques.append(randomQuestion)
                randomQuestion = Int(arc4random_uniform(UInt32(11) - 1 ))
            }
        }
    }
    
    
    // Method used to ask the next question to user
    func NextQuestion(quesNumber: Int) {
       
            quesLabel.text = questions[quesNumber]
            btn0.setTitle(allAnswers[quesNumber][0], for: .normal)
            btn1.setTitle(allAnswers[quesNumber][1], for: .normal)
            btn2.setTitle(allAnswers[quesNumber][2], for: .normal)
            btn3.setTitle(allAnswers[quesNumber][3], for: .normal)
            
          //  questions.remove(at: quesNumber)
           // allAnswers.remove(at: quesNumber)
            
            btn0.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
            btn1.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
            btn2.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
            btn3.backgroundColor = UIColor(red:0.33, green:0.51, blue:1.00, alpha:1.0)
            
        //
        }
  
    
    @IBAction func btnpres0(_ sender: UIButton)
    {
      let bt = sender.tag
        if(bt == correctAnswer[ques[queCnt]]) //Modified
        {
            count = count + 1
            sender.backgroundColor = UIColor.green
            queCnt += 1
        }
        else
        {
            sender.backgroundColor = UIColor.red
            queCnt += 1
        }
        
        /* Checking If 5 questions are asked or not. If yes then hiding the elements of screen.
           If no then calling the NextQuestion method */
        if(queCnt <= 4 ){ //Modified
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.NextQuestion(quesNumber: self.ques[self.queCnt])
            }
        }
        else {
           lastScreen.isHidden = false
            quesLabel.text = "Done!"
            btn0.isHidden = true
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        }
    }
    

    
}

