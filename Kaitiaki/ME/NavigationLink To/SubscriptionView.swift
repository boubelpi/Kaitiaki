//
//  SettingsView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 09/05/23.
//

import SwiftUI
import Foundation

struct SubscriptionView: View {
    var body: some View {
        Section("SUBSCRIPTION") {
            
            /* Text("SUBSCRIPTION")
             .listRowBackground(Color(red: 0.9, green: 0.9, blue: 0.9))*/
            
            Group {
                NavigationLink(destination: UpgradeProView()) {
                Label(
                    title: { Text("Upgrade to Premium")},
                    icon: {
                        Image(systemName:
                                "lock.fill")
                        /* .resizable()*/
                        /*.scaledToFit()*/
                        .foregroundColor(.red)
                    }
                  )
                }
                NavigationLink(destination: UpgradeProView()) {
                Label(
                    title: { Text("Family Plan")},
                    icon: {
                        Image(systemName:
                                "house.fill")
                        /* .resizable()*/
                        /*.scaledToFit()*/
                        .foregroundColor(.purple)
                    }
                )
                }
            }
            
        }

    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView()
    }
}
