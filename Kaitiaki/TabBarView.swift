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
            TipsView()
                .tabItem {
                    Label("Carbon emissions", systemImage: "carbon.dioxide.cloud.fill")

                }
            TipsView()
                .tabItem {
                    Label("TipsView", systemImage: "carbon.dioxide.cloud.fill")

                }
            TipsView()
                .tabItem {
                    Label("Carbon emissions", systemImage: "carbon.dioxide.cloud.fill")

                }
            TipsView()
                .tabItem {
                    Label("Carbon emissions", systemImage: "carbon.dioxide.cloud.fill")

                }
            SettingsTabView()
                .tabItem {
                    Label("Settings", systemImage: "gear")

                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
