//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        use 'image literal' to select image, instead of getElementByID
        diceImageOne.image = #imageLiteral(resourceName: "DiceSix")
        diceImageTwo.image = #imageLiteral(resourceName: "DiceTwo")
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
//        To use string literals, use \(variableHere) instead of ${thisInJavascript}
        print("Button was pressed")
//        Let in swift is a constant. Use var for variables, and let for constants. const is not a key term
        let imageArray = [
            #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")
        ]
        let randomIndexOne = (Int(floor(Float.random(in: 0...1) * Float(imageArray.count))))
        let randomIndexTwo = (Int(floor(Float.random(in: 0...1) * Float(imageArray.count))))

        diceImageOne.image = imageArray[randomIndexOne]
//        NOTE arrays in swift have randomElement method, that does the same as Math.floor(Math.random...) in Javascript!
        diceImageTwo.image = imageArray.randomElement()
    }
    
}

