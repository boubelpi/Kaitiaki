//
//  QuizSuggestionsView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct QuizSuggestionsView: View {
    var quiz: ChallengeQuiz
    private let grid = [GridItem](repeating: .init(.flexible()), count: 2)
    @Binding var answer: String
    var body: some View {
        LazyVGrid(columns: grid) {
            ForEach(quiz.suggestions, id: \.self) { suggestion in
                Button {
                    answer = suggestion
                } label: {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(!answer.isEmpty ? .gray : .blue)
                        .padding(10)
                        .frame(width: UIScreen.main.bounds.width / 2, height: 100)
                        .overlay(
                            Text(suggestion)
                                .foregroundColor(.white)
                                .padding()
                        )
                }
                .disabled(!answer.isEmpty)
            }
        }
        .padding()

    }
}
