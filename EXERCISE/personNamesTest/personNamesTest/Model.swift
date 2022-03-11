//
//  Model.swift
//  personNamesTest
//
//  Created by Florian Doppler on 10.03.22.
//

import Foundation

class Model {
    var personNames : [[String]] = []
    
    func addName(firstname : String, lastname : String) {
        if (firstname != "" && lastname != "") {
            personNames.append([firstname, lastname])
        }
    }
}
