//
//  ChallengeQuizView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct ChallengeQuizView: View {
    var quiz: ChallengeQuiz
    @State var answer = ""
    var body: some View {
        VStack {
            Text(quiz.question)
                .font(.system(.title, design: .default, weight: .bold))
            QuizTipView(quiz: quiz, answer: answer)
            QuizSuggestionsView(quiz: quiz, answer: $answer) //sugestions for the question
            QuizGoBackButton(answer: answer)
        }
        .navigationBarBackButtonHidden(true) //it hids the return button to prevent the user from goign backwards if he hasn't finished the quiz.
    }
}
