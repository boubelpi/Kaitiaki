//
//  QuizSuggestionsView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//Ici on met les 4 propositions de réponses à chaque question

import SwiftUI

struct QuizSuggestionsView: View {
    var quiz: ChallengeQuiz
    private let grid = [GridItem](repeating: .init(.flexible()), count: 2)
    @Binding var answer: String
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grid) {
                ForEach(quiz.suggestions, id: \.self) { suggestion in
                    Button {
                        answer = suggestion
                        ProfileResults.singletone.number_of_all_answers += 1
                        if (answer == quiz.answer) {
                            ProfileResults.singletone.number_of_correct_answer += 1
                        }
                    } label: {
                        Rectangle()
                            .foregroundColor(!answer.isEmpty ? .gray : .blue)
                            .padding(6.88)
                            .frame(width: UIScreen.main.bounds.width / 2, height: 174)
                            .overlay(
                                Text(suggestion)
                                    .foregroundColor(.white)
                            )
                    }
                    .disabled(!answer.isEmpty)
                }
            }
            .padding()
        }
    }
}
