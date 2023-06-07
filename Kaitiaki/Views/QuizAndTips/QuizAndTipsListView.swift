//
//  QuizAndTipsListView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 05/06/23.
//

import SwiftUI

struct QuizAndTipsListView<V: View>: View {
    init(category: ChallengeCategory.Category,
         @ViewBuilder view: @escaping (ChallengeCategory.Category) -> V) {
        self.category = category
        self.view = view(category)
    }
    var category: ChallengeCategory.Category
    var view: V
    var body: some View {
        NavigationLink(destination: view) {
            Text(category.rawValue.capitalized)
                .bold()
                .font(.title3)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    Color.green
                        .cornerRadius(15)
                )
                .padding()
        }
    }
}

