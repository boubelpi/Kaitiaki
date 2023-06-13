//
//  KaitiakiApp.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 08/05/23.
//

func nextView () -> some View {
    if NameOfUser.singleton.username == "" {
        return AnyView(EnterNameView())
    }
    else {
        return AnyView(TabBarView())
    }
}

import SwiftUI
@main
struct KaitiakiApp: App {
    var body: some Scene {
        WindowGroup {
            nextView()
        }
    }
}
