//
//  ModelCO2.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import Foundation

struct CO2e : Identifiable {
    var id = UUID()
    var ar_of_all : [Double]
    var ar_of_types : [Int]
    var ar_of_strings : [String]
    var needed_ar : [Pair]
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
    mutating func bubble_sort() {
        var ar : [Pair] = []
        needed_ar = ar
        if (ar_of_all.count == 0) {return}
        if (ar_of_all.count == 1) {
            needed_ar = [Pair(s : ar_of_strings[0], a : ar_of_all[0])]
            return
        }
        for i in 0...ar_of_all.count - 2 {
            for j in i + 1...ar_of_all.count - 1 {
                if (ar_of_all[i] > ar_of_all[j]) {
                    var t = ar_of_all[i]
                    ar_of_all[i] = ar_of_all[j]
                    ar_of_all[j] = t
                    var d = ar_of_types[i]
                    ar_of_types[i] = ar_of_types[j]
                    ar_of_types[j] = d
                    var e = ar_of_strings[i]
                    ar_of_strings[i] = ar_of_strings[j]
                    ar_of_strings[j] = e
                }
            }
        }
        for i in 0...ar_of_all.count - 1 {
            needed_ar.append(Pair(s : ar_of_strings[i], a : ar_of_all[i]))
        }
    }
}
