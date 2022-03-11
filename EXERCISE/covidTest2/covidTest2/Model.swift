//
//  Model.swift
//  covidTest2
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
    var dataArray : [CoronaData] = []
    
    func add(data : CoronaData) {
        dataArray.append(data)
    }
}
