//
//  Model.swift
//  luftfilterTest
//
//  Created by Florian Doppler on 10.03.22.
//

import Foundation

class AirFilter {
    var produktbezeichnung : String
    var leistung : Float
    var raumNummer : String
    var betriebsstunden : Int
    
    init(produktbezeichnung : String, leistung : Float, raumNummer : String, betriebsstunden : Int) {
        self.produktbezeichnung = produktbezeichnung
        self.leistung = leistung
        self.raumNummer = raumNummer
        self.betriebsstunden = betriebsstunden
    }
}

class Model {
    var airFilters = [AirFilter]()
    var current : AirFilter?
}
