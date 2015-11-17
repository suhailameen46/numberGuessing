//
//  ViewController.swift
//  whatNumber
//
//  Created by Suhail Ameen on 16/11/15.
//  Copyright © 2015 Suhail Ameen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var correct = arc4random_uniform(6)
    
    @IBOutlet var messgae: UILabel!
    
    @IBOutlet var guessField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(correct)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkButton(sender: UIButton) {
        
        let guess = guessField.text
        let correctGuess = String(correct)
        guessField.text = ""
        
        if guess == correctGuess {
            
            messgae.text = "Yaay! correct Answer"
            messgae.textColor = UIColor.greenColor()
            
        
        }
        
        else {
            messgae.text = "wrong answer! Try again"
            messgae.textColor = UIColor.redColor()
            
        
        }
        
        
        
    }

}

