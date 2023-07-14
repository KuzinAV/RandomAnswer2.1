//
//  ViewController.swift
//  RandonAnswer
//
//  Created by MaxPower on 10.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerButton.layer.cornerRadius = 10
        answerButton.setTitle("Get answer!", for: .normal)
        answerButton.setTitle("Wait", for: .highlighted)
        answerButton.isEnabled = true
        answerButton.setTitleColor(.red, for: .highlighted)
        answerButton.backgroundColor = .link
    }

    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "YES" : "NO"
        }
        
    }
    
}

