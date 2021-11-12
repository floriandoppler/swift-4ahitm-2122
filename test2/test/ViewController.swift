//
//  ViewController.swift
//  test
//
//  Created by Holzer Teresa on 17.09.21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    var guessedNumber = 0

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonGuess: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.numberToGuess = Int(arc4random_uniform(100))
        label.text = "Try to guess the number!"
        
        print(model.numberToGuess)
    }
    
    @IBAction func onChangeTextField(_ sender: UITextField) {
        buttonGuess.isEnabled = model.isValid(guess: Int(textField.text!))
    }
    
    @IBAction func onclick(_ sender: UIButton) {
        // Check for input not nill
        
        
        model.counterOfTrys+=1
    }
    
    func compare(guessedString: String) -> Int! {
        let guess = Int(guessedString)!
        return model.compare(guess: guess)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as? ResultViewController
        resultViewController?.model = model
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(checkNumber()){
            return true
        }
        print("no")
        return false
    }
    
    func checkNumber() -> Bool{
        if(Optional(guessedNumber) != nil){
            print("")
            guessedNumber = compare(guessedString: textField.text!)
            
            let text: String?
            
            switch guessedNumber{
            case -1:
                text = "Higher ⬆️"
                label.text = text
                return false
            case 1:
                text = "Lower ⬇️"
                label.text = text
                return false
            default:
                text = "Congrats! 🎉"
                label.text = text
                return true
            }
            
            
        }
        return false
    }


}

