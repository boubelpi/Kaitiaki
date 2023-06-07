//
//  SubjectTipsListView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 05/06/23.
//

import SwiftUI

struct SubjectTipsListView: View {
    var body: some View {
        ForEach(ChallengeCategory.Category.allCases, id: \.self) { category in
            NavigationLink(destination: TipsListView()) {
                HStack {
                    Text(category.rawValue.capitalized)
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "lock")
                        .font(.title3)
                }
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

struct TipsListView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectTipsListView()
    }
}
