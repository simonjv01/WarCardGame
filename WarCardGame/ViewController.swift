//
//  ViewController.swift
//  WarCardGame
//
//  Created by Simon Vargas on 12/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the numbers
        if leftNumber > rightNumber {
            // Left side wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            // right side wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
            
        }
        else {
            //tie
        }
    }
    

}

