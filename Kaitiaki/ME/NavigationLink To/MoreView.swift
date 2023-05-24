//
//  MoreView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 09/05/23.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        Section("MORE"){
            /*.listRowBackground(Color(red: 0.9, green: 0.9, blue: 0.9))*/
            
            Group {
                NavigationLink(destination: ScienceView()) {
                    Label(
                        title: { Text("The science of Kaitiaki")},
                        icon: {
                            Image(systemName:
                                    "loupe")
                            /* .resizable()*/
                            /*.scaledToFit()*/
                            .foregroundColor(.green)
                        }
                    )//fin label
                }//fin navigationvew
                
                NavigationLink(destination: BlogView()) {
                    Label(
                        title: { Text("Kaitiaki's Blog")},
                        icon: {
                            Image(systemName:
                                    "newspaper.fill")
                            /* .resizable()*/
                            /*.scaledToFit()*/
                            .foregroundColor(.yellow)
                        }
                    )//fin label
                }//Fin navigationlink
                
                NavigationLink(destination: HelpView()) {
                    Label(
                        title: { Text("Help")},
                        icon: {
                            Image(systemName: "questionmark.circle.fill")
                            /* .resizable()*/
                            /*.scaledToFit()*/
                                .foregroundColor(.green)
                        }
                    )//fin label
                }//fin la nav link
                
                NavigationLink(destination: DisconnectView()) {
                    Label(
                        title: { Text("Log out")
                                .foregroundColor(.red)
                                .bold()
                                .lineLimit(2)
                        },
                        icon: {
                            Image(systemName: "")
                            /* .resizable()*/
                            /*.scaledToFit()*/
                            //.foregroundColor(.green)
                        } //fin icon
                    
                    )//fin label
                }// fin du groupe fin de la navigation link
           }//fin section MORE
        }
    }
    
    struct MoreView_Previews: PreviewProvider {
        static var previews: some View {
            MoreView()
        }
    }
}
