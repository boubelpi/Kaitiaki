//
//  QuizTipView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//It is the logic of the quiz that is here

import SwiftUI

struct QuizTipView: View {
    var quiz: ChallengeQuiz
    var answer: String
    var body: some View {
        ScrollView {
            tipView()
                .padding()
        }
    }
    @ViewBuilder
    private func tipView() -> some View {
        ScrollView {
            switch true {
            case !answer.isEmpty && (answer != quiz.answer):
                Text("Incorrect")
                    .font(.title)
                    .foregroundColor(.red)
                ScrollView {
                    Text(quiz.tip)
                }
            case answer == quiz.answer:
                Text("Correct")
                    .font(.title)
                    .foregroundColor(.green)
                ScrollView {
                    Text(quiz.tip)
                }
            default: EmptyView()
            }
        }
    }
}

