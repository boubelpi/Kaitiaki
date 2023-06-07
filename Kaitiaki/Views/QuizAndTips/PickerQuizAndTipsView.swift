//
//  PickerQuizAndTipsView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 05/06/23.
//

import SwiftUI

struct PickerQuizAndTipsView: View {
    @Binding var selectedOption: QuizAndTipsOption //nouvellement ajoute
    var body: some View {
        Picker("Select Option", selection: $selectedOption){ //nouvellement ajoute
            ForEach(QuizAndTipsOption.allCases, id: \.self) { option in
                Text(option.rawValue)
                    .tag(option)
            }
        } // Fin du picker
        .pickerStyle(SegmentedPickerStyle())
        .padding()
    }
}

