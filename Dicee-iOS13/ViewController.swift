//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //WHO          WHAT    VALUE
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let dice1 = randomDice(randomNumber: Int.random(in: 1...6))
        let dice2 = randomDice(randomNumber: Int.random(in: 1...6))

        diceImageView1.image = UIImage(named: dice1)
        diceImageView2.image = UIImage(named: dice2)
    }
    
    func randomDice(randomNumber: Int) -> String {
        switch randomNumber {
        case 1: return "DiceOne"
        case 2: return "DiceTwo"
        case 3: return "DiceThree"
        case 4: return "DiceFour"
        case 5: return "DiceFive"
        case 6: return "DiceSix"
        default: return "DiceOne"
        }
    }
    
}

