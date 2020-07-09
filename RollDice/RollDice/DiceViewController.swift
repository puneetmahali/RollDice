//
//  DiceViewController.swift
//  RollDice
//
//  Created by Puneet Mahali on 07.07.20.
//  Copyright © 2020 Puneet Mahali. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var diceSumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.layer.cornerRadius = 10
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        let diceOne = arc4random_uniform(6) + 1
        let diceTwo = arc4random_uniform(6) + 1
        
        diceSumLabel.text = "The sum is: \(diceOne + diceTwo)"
        
        diceImageView1.image = diceArray[Int(diceOne)-1]
            
        diceImageView2.image = diceArray[Int(diceTwo)-1]
        
        
        
    }
}

