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
            switch category{
            case .internet:
                NavigationLink(destination: TipsListView()) {
                    HStack {
                        Text(category.rawValue.capitalized)
                            .bold()
                            .font(.title3)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "lock")
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.blue // changes the colors of all button elements in quiz and tips
                        //.Color.accentColor
                            .cornerRadius(15)
                    )
                    //.foregroundColor(.accentColor)
                    .padding()
                    //i also added the accentcolor2 
                }
            default:
                NavigationLink(destination: EquipmentTipsView()) {
                    HStack {
                        Text(category.rawValue.capitalized)
                            .bold()
                            .font(.title3)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "lock")
                            .foregroundColor(.white)
                            .font(.title3)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.blue // changes the colors of all button elements in quiz and tips
                        //.Color.accentColor
                            .cornerRadius(15)
                    )
                    //.foregroundColor(.accentColor)
                    .padding()
                    //i also added the accentcolor2
                }
            }
        }
    }
}

struct SubjectTipsListView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectTipsListView()
    }
}
