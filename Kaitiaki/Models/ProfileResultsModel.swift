//
//  ProfileResultsModel.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 12/06/23.
//

import Foundation

class ProfileResults {
    static let singletone = ProfileResults()
    private init() {}
    var LastCalcResultYear : Double = 0.0
    var LastCalcResultWeek : Double {
        return LastCalcResultYear / Double(56)
    }
    var number_of_correct_answer = 0
    var number_of_all_answers = 0
    var percent : Double {
        return Double(number_of_correct_answer) / Double(number_of_all_answers == 0 ? 1 : number_of_all_answers)
    }
}
