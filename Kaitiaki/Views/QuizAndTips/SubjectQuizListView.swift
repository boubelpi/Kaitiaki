//
//  QuizListView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 05/06/23.
//

import SwiftUI

struct SubjectQuizListView: View {
    var body: some View {
        ForEach(ChallengeCategory.Category.allCases, id: \.self) { category in
            NavigationLink(destination: ChallengeListView(category: category)) {
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
}

struct QuizListView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectQuizListView()
    }
}
