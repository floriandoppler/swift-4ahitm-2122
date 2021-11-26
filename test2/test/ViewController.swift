//
//  ViewController.swift
//  test
//
//  Created by Holzer Teresa on 17.09.21.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonGuess: UIButton!
    @IBOutlet weak var newGameButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initalize()
    }
    
    func initalize(){
        model.numberToGuess = Int(arc4random_uniform(100));
        label.text = "Guess The Number!"
        
        print(model.numberToGuess)
    }
    
    @IBAction func onChangeTextField(_ sender: UITextField) {
        buttonGuess.isEnabled = model.isValid(guess: Int(textField.text!))
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        initalize()
    }
    
    @IBAction func onclick(_ sender: UIButton) {
        let guess = Int(textField.text!)!
        model.addGuessedNumber(guess: guess)
    }
    
    func compare(guessedString: String) -> Int! {
        let guess = Int(guessedString)!
        return model.compare(guess: guess)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tableViewController  = segue.destination as? TableViewController
        tableViewController?.model = model
    
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if(checkNumber()){
            return true
        }
        print("no")
        return false
    }
    
    func checkNumber() -> Bool {
            let compareResult = compare(guessedString: textField.text!)
            
            let text: String?
            
            switch compareResult{
            case -1:
                text = "Higher! ⬆️"
                label.text = text
                return false
            case 1:
                text = "Lower! ⬇️"
                label.text = text
                return false
            default:
                text = "Congrats! 🎉"
                label.text = text
                return true
            }
    }
}

