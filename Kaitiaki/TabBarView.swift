//
//  TabBarView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 14/05/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            CalculatorView(txt : "")
                .tabItem {
                    Label("Carbon footprint calculator", systemImage: "leaf.fill")
                }
            
            TipsView()
                .tabItem {
                    Label("CO2e converter", systemImage: "carbon.dioxide.cloud.fill")
                }
            
            ChallengeCategoryListView()
                .tabItem {
                    Label("Quiz & Tips", systemImage: "message")
                }
            
            //SettingsTabView()
              ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")

                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
