//
//  ViewController.swift
//  namesTest
//
//  Created by Florian Doppler on 09.03.22.
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

    @IBAction func sendName(_ sender: Any) {
        model.submitName(firstName: firstNameTextField.text ?? "", lastName: lastNameTextField.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as? TableViewController
        
        if let controller = viewController {
            controller.model = self.model
        }
    }
}

