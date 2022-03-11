//
//  ViewController.swift
//  NumberGuess
//
//  Created by Florian Doppler on 01.10.21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var guessMeButton: UIButton!
    @IBAction func buttonClick(_ sender: Any) {
        // TODO: Check input form for not nil
        
        let guessedNumber = model.compare(guessedString: textField.text!)
        
        let text : String?
        
        switch model.compare(guess: guessedNumber) {
        case -1:
            text = "Higher"
        case 1:
            text = "Lower"
        default:
            text = "Correct"
        }
        
        numberLabel.text = text
        model.countOfTries += 1
    }
    
    
    @IBAction func editingChanged(_ sender: UITextField) {
        guessMeButton.isEnabled = model.isValid(guess: sender.text)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int.random(in: 0..<100)
        print("Number to guess: \(model.numberToGuess)")
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("No!")
        return false
    }


}

