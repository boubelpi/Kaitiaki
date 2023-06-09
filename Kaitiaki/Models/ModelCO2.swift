//
//  ModelCO2.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import Foundation

struct CO2e {
    var ar_of_all : [Double]
    var ar_of_types : [Int]
    var co2_year : Double {
        var sum : Double = 0.0
        if (ar_of_all.count == 0) {return sum}
        for i in 0...ar_of_all.count - 1 {
            if (ar_of_types[i] % 2 == 0) {
                sum += ar_of_all[i]
            }
        }
        return sum
    }
    var co2_week : Double {
        return co2_year / Double(56)
    }
}
