//
//  TabBarView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 14/05/23.
//

import SwiftUI
import RAMAnimatedTabBarController

func nextView (cas : String) -> some View {
    switch cas {
    case "calculator":
        return AnyView(StartingPageView())
    case "converter":
        return AnyView(ConverterView())
    case "quiz_tips":
        return AnyView(QuizAndTipsView())
    default:
        return AnyView(ProfileView())
    }
}


struct TabBarView: View {
    @State private var selectedTab : Tab = .calculator
    var body: some View {
            TabView(selection: $selectedTab) {
                ForEach(Tab.allCases, id: \.rawValue) {tab in
                        nextView(cas : tab.rawValue)
                        .tag(tab)
                }
        }
        AnimatedTabBar(selectedTab: $selectedTab)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
