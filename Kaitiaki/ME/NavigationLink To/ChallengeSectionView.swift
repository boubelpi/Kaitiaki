//
//  ChallengeSectionView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 08/05/23.
//

import SwiftUI

struct ChallengeSectionView: View {
    var body: some View {
        Section("YOUR CHALLENGES") {
            NavigationLink(destination: NudgeView()) {
            Label(
                title: { Text("""
                Reminders
                Days of the week
                2 PM
                """)},
                icon: {
                    Image(systemName:
                            "alarm.fill")
                    /* .resizable()*/
                    /*.scaledToFit()*/
                    .foregroundColor(.yellow)
                }
            )
          }
        }
    }
}

struct ChallengeSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeSectionView()
    }
}
