//
//  LegalInformationView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 11/05/23.
//

import SwiftUI

struct LegalInformationView: View {
    var body: some View {
        NavigationView {
        Section("LEGAL INFORMATION"){
            Group{
                NavigationLink(destination: PrivacyPolicyView()) {
                    Label(
                        title: { Text("Privacy Policy")},
                        icon: {
                            Image(systemName:
                                    "lock.doc.fill")
                            .foregroundColor(.blue)
                        }
                    )
                }//End navigation
                
                NavigationLink(destination: TermsOfUseView()) {
                    Label(
                        title: { Text("Terms of Use")},
                        icon: {
                            Image(systemName: "chart.bar.doc.horizontal")
                            // .resizable()
                            // .scaledToFit()
                                .foregroundColor(.blue)
                        }
                    )
                }
            }
            }//fin groupe
        }//fin section Legal information
    }
}

struct LegalInformationView_Previews: PreviewProvider {
    static var previews: some View {
        LegalInformationView()
    }
}
