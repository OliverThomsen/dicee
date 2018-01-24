//
//  ViewController.swift
//  Dicee
//
//  Created by Oliver Elleman Thomsen on 24/01/2018.
//  Copyright © 2018 Thomsen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceValue1: Int = 0
    var randomDiceValue2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    func rollDice() {
        randomDiceValue1 = Int(arc4random_uniform(6)) + 1
        randomDiceValue2 = Int(arc4random_uniform(6)) + 1
        diceImageView1.image = UIImage(named: "dice\(randomDiceValue1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceValue2)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
}

