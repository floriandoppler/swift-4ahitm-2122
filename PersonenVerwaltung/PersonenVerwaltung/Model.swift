//
//  Model.swift
//  PersonenVerwaltung
//
//  Created by Doppler Florian on 26.11.21.
//

import Foundation

class Model {
    
    var personNames : [[String]] = []
    
    func submitName(firstName : String, lastName : String) {
        
        // if both firstName & lastName are not "empty", the names are submitted
        if (firstName != "" || lastName != "") {
            personNames.append([firstName, lastName])
        }
    }
}
