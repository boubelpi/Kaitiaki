//
//  ChallengeListView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct ChallengeListView: View {
    var category: ChallengeCategory.Category
    var challenges: [Subject] {
        Subject.all.filter { $0.category.category == category }
    }
    var body: some View {
        NavigationView {
        VStack {
            ScrollView() {
                VStack {
                    ForEach(challenges, id: \.self) { challenge in
                        NavigationLink(destination: ChallengeQuizView(quiz: challenge.quiz)) {
                            Text(challenge.name.capitalized)
                                .bold()
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                            //.foregroundColor(.accentColor)
                                .padding()
                          //  Spacer(minLength: 25)
                        }
                        Spacer()
                    }
                }
                }
            }
        }
    }
}

