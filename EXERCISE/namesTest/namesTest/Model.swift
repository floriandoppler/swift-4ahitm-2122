//
//  Model.swift
//  namesTest
//
//  Created by Florian Doppler on 09.03.22.
//

import Foundation

class Model {
    
    var personNames : [[String]] = []
    
    func submitName(firstName : String, lastName : String) {
        personNames.append([firstName, lastName])
    }
}
