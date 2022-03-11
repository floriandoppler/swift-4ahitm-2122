//
//  ViewController.swift
//  NameExercise
//
//  Created by Florian Doppler on 10.03.22.
//

import UIKit

class ViewController: UIViewController {
    var model = Model()
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitName(_ sender: Any) {
        model.addName(firstName: firstNameTextField.text ?? "", lastName: lastNameTextField.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? TableViewController
        
        if let controller = viewController {
            controller.model = self.model
        }
    }
}

