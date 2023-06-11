//
//  QuizAndTipsView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 27/05/23.
//

import SwiftUI

struct QuizAndTipsView: View {
    @State private var selectedOption: QuizAndTipsOption = .quiz
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    PickerQuizAndTipsView(selectedOption: $selectedOption)
                    switch selectedOption {
                    case .quiz:
                        SubjectQuizListView()
                    case .tips:
                        SubjectTipsListView()
                    default:
                        PlayWithDataView()
                    }
                    
                //la scrollview pousse le contenu deja tout en haut. ps besoin de spacer
                }
            }
            .navigationBarTitle("Quiz & Tips")
        }
    }
}

