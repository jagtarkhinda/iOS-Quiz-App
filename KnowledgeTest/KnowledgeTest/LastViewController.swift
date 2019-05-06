//
//  LastViewController.swift
//  KnowledgeTest
//
//  Created by Jagtar Singh on 2018-07-27.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import UIKit



class LastViewController: UIViewController {

    
    @IBOutlet weak var upperLabel: UILabel!
    @IBOutlet weak var lowerLabel: UILabel!
    @IBOutlet weak var tryAgain: UIButton!
    var message = ""
    
    override func viewDidLoad() {
         super.viewDidLoad()
        tryAgain.display()
        tryAgain.isHidden = true
        if (count <= 2)
        {
            message = "Please Try Again"
            tryAgain.isHidden = false
        }
        else if (count == 3)
        {
            message = "Good Job!"
        }
        else if (count == 4)
        {
            message = "Excellent Work!"
        }
        else if (count == 5)
        {
            message = "Yor are a genius!"
        }
        upperLabel.text = "\(name) your Socre is"
        
        lowerLabel.text = """
                          \(String(count))/5
                          \(message)
                          """
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
