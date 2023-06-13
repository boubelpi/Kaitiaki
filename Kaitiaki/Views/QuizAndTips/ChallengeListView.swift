//
//  ChallengeListView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct ChallengeListView: View {
    var category: ChallengeCategory.Category
    private let grid = [GridItem](repeating: .init(.flexible()), count: 2)
    var challenges: [Subject] {
        Subject.all.filter { $0.category.category == category }
    }
    var body: some View {
        ScrollView {
            LazyVGrid(columns: grid) {
                ForEach(challenges, id: \.self) { challenge in
                    NavigationLink(destination: ChallengeQuizView(quiz: challenge.quiz)) {
                        Text(challenge.name.capitalized)
                            .foregroundColor(.white)
                    }
                    .background(RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(category == .internet ? Color.green : Color.accentColor)
                        .padding(15)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width / 2, height: 141)
                    )
                    .padding(44)
                    //  Spacer(minLength: 25)
                    
                }
            }
    }
    }
}
