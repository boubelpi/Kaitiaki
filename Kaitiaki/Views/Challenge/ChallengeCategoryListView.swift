//
//  ChallengeCategoryListView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct ChallengeCategoryListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
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
            .navigationTitle("Quiz and Tips")
            .font(.title2)
        }
    }
}
