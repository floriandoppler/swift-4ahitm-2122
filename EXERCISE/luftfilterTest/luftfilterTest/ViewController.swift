//
//  ViewController.swift
//  luftfilterTest
//
//  Created by Florian Doppler on 10.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    var airFilter : AirFilter!

    @IBOutlet weak var produktbezeichnung: UILabel!
    @IBOutlet weak var leistung: UILabel!
    @IBOutlet weak var raumNummer: UILabel!
    @IBOutlet weak var betriebsstunden: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        produktbezeichnung.text = airFilter.produktbezeichnung
        leistung.text = "\(airFilter.leistung) m^3"
        raumNummer.text = "Room: \(airFilter.raumNummer)"
        betriebsstunden.text = "\(airFilter.betriebsstunden)h"
    }
}

