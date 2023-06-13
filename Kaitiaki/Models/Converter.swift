//
//  Calculator.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 05/06/23.
//

import Foundation

let water : Int = 2209299
let voiture : Int = 4595588
let tshirts : Int = 163052
let boeuf : Int = 137741
let biere : Int = 913704
let tocn : Int = 1000000

func round_calc (_ x : Double, _ after_dot : Int) -> String {
    var xx = x
    var sign = ""
    if (x < 0.0) {
        sign = "-"
        xx = -xx
    }
    var coef = 1
    for _ in 0...after_dot - 1 {
        coef *= 10
    }
    xx *= Double(coef)
    var int_x = Int(xx + 0.5)
    var after_string = String(int_x % coef)
    while (after_string.count < after_dot) {
        after_string = "0" + after_string
    }
    if (after_string == "0") {
        return sign + String(int_x / coef)
    }
    else {
        return sign + String(int_x / coef) + "." + after_string
    }
}

func find_water (_ x : String) -> Double {
    if (Double(x) == nil) {return 0.0}
    return Double(round_calc(Double(water) / Double(tocn) * Double(x)!, 2))!
}

func find_voiture (_ x : String) -> Double {
    if (Double(x) == nil) {return 0.0}
    return Double(round_calc(Double(voiture) / Double(tocn) * Double(x)!, 2))!
}

func find_tshirts(_ x : String) -> Double {
    if (Double(x) == nil) {return 0.0}
    return Double(round_calc(Double(tshirts) / Double(tocn) * Double(x)!, 2))!
}

func find_boeuf (_ x : String) -> Double {
    if (Double(x) == nil) {return 0.0}
    return Double(round_calc(Double(boeuf) / Double(tocn) * Double(x)!, 2))!
}

func find_biere (_ x : String) -> Double {
    if (Double(x) == nil) {return 0.0}
    return Double(round_calc(Double(biere) / Double(tocn) * Double(x)!, 2))!
}
