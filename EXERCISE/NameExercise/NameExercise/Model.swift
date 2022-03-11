//
//  Model.swift
//  NameExercise
//
//  Created by Florian Doppler on 10.03.22.
//

import Foundation

class Model {
    
    var personNames : [[String]] = []
    
    func addName(firstName : String, lastName : String) {
        personNames.append([firstName, lastName])
    }
}
