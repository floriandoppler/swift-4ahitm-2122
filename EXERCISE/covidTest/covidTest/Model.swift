//
//  Model.swift
//  covidTest
//
//  Created by Florian Doppler on 08.03.22.
//

import Foundation

class CoronaData {
    
    var bundesland : String
    var fzHosp : Int
    var fzicu : Int
    
    init(bundesland : String, fzHosp : Int, fzicu : Int) {
        self.bundesland = bundesland
        self.fzHosp = fzHosp
        self.fzicu = fzicu
    }
}

class Model {
    var coronaData = [CoronaData]()
    
    init() {
        coronaData = []
    }
    
    func add(downloadedData : CoronaData) {
        coronaData.append(downloadedData)
    }
}
