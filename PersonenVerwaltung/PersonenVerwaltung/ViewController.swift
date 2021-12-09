//
//  ViewController.swift
//  PersonenVerwaltung
//
//  Created by Doppler Florian on 26.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    var model : Model = Model()

    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addName(_ sender: Any) {
        // add a new name to the history-list
        model.submitName(firstName: firstNameTextField.text ?? "", lastName: lastNameTextField.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? TableViewController
        
        if let controller = viewController {
            controller.model = self.model
        }
    }
}
