//
//  Model.swift
//  coronaDataTest
//
//  Created by Florian Doppler on 10.03.22.
//

import Foundation

class CoronaData {
    var bundesland : String
    var fzhosp : Int
    var fzicu : Int
    
    init(bundesland : String, fzhosp : Int, fzicu : Int) {
        self.bundesland = bundesland
        self.fzhosp = fzhosp
        self.fzicu = fzicu
    }
}

class Model {
    var coronaDataArray = [CoronaData]()
    
    init() {
        coronaDataArray = []
    }
    
    func add(coronaData : CoronaData) {
        coronaDataArray.append(coronaData)
    }
}
