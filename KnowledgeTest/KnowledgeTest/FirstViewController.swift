//
//  FirstViewController.swift
//  KnowledgeTest
//
//  Created by Jagtar Singh on 2018-07-27.
//  Copyright © 2018 Jagtar Singh. All rights reserved.
//

import UIKit

var name = ""

extension UIButton {
    func display() {
        self.layer.cornerRadius = self.frame.height/2
    }
}

class FirstViewController: UIViewController {
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var btnStart: UIButton!
    @IBAction func showMainView(_ sender: Any) {
        name = enterName.text!
        enterName.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        btnStart.display()
        enterName.layer.cornerRadius = 20
    }
}
