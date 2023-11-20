//
//  ViewController.swift
//  EightBall
//
//  Created by Harmand Gill on 11/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    let messages = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    var message: String = ""
    var lastMessage: String = ""

    @IBAction func questionButtonPressed(_ sender: UIButton) {
        repeat {
            message = messages.randomElement()!
        } while lastMessage == message
        
        lastMessage = message
        messageLabel.text = message
    }
}

