//
//  QuizGoBackButton.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct QuizGoBackButton: View {
    @Environment(\.dismiss) private var dismiss
    var answer: String
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("Go back")
                .bold()
                .font(.title3)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    ZStack {
                        answer.isEmpty ? Color.gray : Color.red
                    }
                        .cornerRadius(15)
                )
                .padding()
        }
        .disabled(answer.isEmpty)
    }
}
