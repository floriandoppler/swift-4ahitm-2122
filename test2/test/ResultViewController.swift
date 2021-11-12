//
//  ResultViewController.swift
//  test
//
//  Created by Doppler Florian on 12.11.21.
//

import UIKit

class ResultViewController: UIViewController {

    var model : Model!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if model.counterOfTrys == 1 {
            textLabel.text = "Congrats! You needed \(model.counterOfTrys) Try! 🎉"
        }
        
        else {
            textLabel.text = "Congrats! You needed \(model.counterOfTrys) Tries! 🎉"
        }

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
