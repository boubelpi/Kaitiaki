//
//  ChallengeQuiz.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 25/05/23.
//
//This file is for the Quiz (MCQ)

import Foundation

struct ChallengeQuiz: Hashable {
    let question: String
    let suggestions: [String]
    let answer: String
    let tip: String
}

