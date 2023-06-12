//
//  ProfileTabView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 03/06/23.
//
//
//  SettingsTabView.swift
//  Kaitiaki3
//
//  Created by Elodie Iparraguirre on 03/06/23.
// C'est la vue du profile de la personne (icone 4 ou silot 4) et c'est là où on ajoute la roue dentee
//La roue dentée redirige vers l'ecran SettingsView
//Cet écran là est ue fenetre modale.


import SwiftUI

struct ProfileView: View {
    @State var isPresented: Bool = false
    //@Binding var settings: Settings //pour relier les state qui sont dans le contentview
    
    var body: some View {
        NavigationView {
            Text("Welcome Page")
                .toolbar {
                    ToolbarItem (placement: .navigationBarTrailing){
                        Button(action:{isPresented = true},
                               label: { Image(systemName: "gear") })
                    }
                }
            
            // Group {
                .sheet(isPresented: $isPresented)
            {
                NavigationView {
                    //ci-dessous, ce qui s'affiche dans la vue modale settings
                    // Text("My settings")
                    
                    //Test on integre tout ce qui etait dans profile avant
                    ScrollView {
                        VStack {
                            Group {
                                HStack {
                                    Image(systemName: "rectangle.portrait.and.arrow.right")
                                        .foregroundColor(.blue)
                                    Text("Log in")
                                    Spacer()
                                    .padding()
                                } //END HSTACK
                            } //END GROUP
                            
                            /* Section(header: Text("YOUR CHALLENGES")) {
                                Group {
                                    NavigationLink(destination: RemindersView()) {
                                        Label(
                                            title: { Text("Reminders Days of the week")},
                                            icon: {
                                                Image(systemName:
                                                        "alarm.fill")
                                                /* .resizable()*/
                                                /*.scaledToFit()*/
                                                .foregroundColor(.blue)
                                                //Spacer()
                                                .padding()
                                            }
                                        )
                                    } //End of Nav Link
                                    
                                } //END GROUP
                            } // END SECTION */
                            
                            Section(header: Text("SUBSCRIPTION")){
                                Group {
                                    Group {
                                        NavigationLink(destination: UpgradeProView()) {
                                            Label(
                                                title: { Text("Upgrade to Premium")},
                                                icon: {
                                                    Image(systemName:
                                                            "lock")
                                                    /* .resizable()*/
                                                    /*.scaledToFit()*/
                                                    .foregroundColor(.blue)
                                                    //Spacer()
                                                    .padding()
                                                }
                                            )
                                        } //End of Nav Link
                                        
                                    } //Group End
                                    
                                /*  Group {
                                        NavigationLink(destination: FamilyPlanView()) {
                                            Label(
                                                title: { Text("Family Plan")},
                                                icon: {
                                                    Image(systemName:
                                                            "house")
                                                    /* .resizable()*/
                                                    /*.scaledToFit()*/
                                                    .foregroundColor(.blue)
                                                    Spacer()
                                                        .padding()
                                                } //End icon
                                            )
                                        } //End of Nav Link
                                    } //Group End */
                                    
                                } //Fin de Group
                            } //FIN de section
                            
                            Section(header: Text("SETTINGS")) {
                                Group {
                                    //add toggle
                                    NavigationLink(destination: RemindersView()) {
                                        Label(
                                            title: { Text("Interface sounds")},
                                            icon: {
                                                Image(systemName:
                                                        "speaker.wave.3.fill")
                                                /* .resizable()*/
                                                /*.scaledToFit()*/
                                                .foregroundColor(.blue)
                                                Spacer()
                                                //.padding()
                                            }
                                        )
                                    } //End of Nav Link
                                } //Group End
                            } //FIN de section
                            Group {
                                Group {
                                    HStack {
                                        Label(
                                            title: {
                                                Text("""
                                                         Do you suffer from
                                                         color blindness?
                                                        """)
                                                .fixedSize(horizontal: true, vertical: false)
                                            },
                                            icon: {
                                                Image(systemName: "eye.trianglebadge.exclamationmark")
                                                    .foregroundColor(.red)
                                            }
                                        )
                                        Spacer()
                                        //Toggle(isOn: $settings.isSufferingColourBlindness) {}
                                    }
                                }
                                
                                Group {
                                    HStack {
                                        Label(
                                            title: {
                                                Text("""
                                                        Ads preferences
                                                         see custom ads
                                                        """)
                                                .fixedSize(horizontal: true, vertical: false)
                                            },
                                            icon: {
                                                Image(systemName: "play.rectangle.fill")
                                                    .foregroundColor(.blue)
                                            }
                                        )
                                        Spacer()
                                        //Toggle(isOn: $settings.HasAdPreferences) {}
                                    }
                                }
                                
                                Group {
                                    HStack {
                                        Label(
                                            title: {
                                                Text("""
                                                               Do you suffer
                                                               from dyslexia?
                                                               We will hide the
                                                               challenges that
                                                               are not adapted
                                                               to your situation
                                                               """)
                                            },
                                            icon: {
                                                Image(systemName: "brain.head.profile")
                                                    .foregroundColor(.purple)
                                            }
                                        )
                                        Spacer()
                                        //  Toggle(isOn:$settings.HasAdPreferences) {}
                                    }
                                }
                                
                                Group {
                                    HStack {
                                        Label(
                                            title: {
                                                Text("Do you suffer from dyscalculia? We will hide the challenges that are not adapted to your situation")
                                            },
                                            icon: {
                                                Image(systemName: "x.squareroot")
                                                    .foregroundColor(.red)
                                            }
                                        )
                                        Spacer()
                                        //    Toggle(isOn: $settings.isSufferingDyscalculia) {}
                                        
                                    }
                                }
                            }
                            
                            Group {
                                NavigationLink(destination: UpgradeProView()) {
                                    Label(
                                        title: { Text("change language")},
                                        icon: {
                                            Image(systemName:
                                                    "quote.bubble")
                                            /* .resizable()*/
                                            /*.scaledToFit()*/
                                            .foregroundColor(.blue)
                                        }
                                    )
                                }
                                
                                NavigationLink(destination: EmailView()) {
                                    Label(
                                        title: { Text("Change Email")},
                                        icon: {
                                            Image(systemName:
                                                    "envelope.fill")
                                            /* .resizable()*/
                                            /*.scaledToFit()*/
                                            .foregroundColor(.blue)
                                        } //End of icon
                                    )
                                } //End of Nav link
                                
                                NavigationLink(destination: PasswordView()) {
                                    Label(
                                        title: { Text("Change Password")},
                                        icon: {
                                            Image(systemName:
                                                    "lock.fill")
                                            .foregroundColor(.blue)
                                        } //End of icon
                                    )
                                } //End of Nav link
                                .padding()
                            }
                            
                            Section(header: Text("GET IN TOUCH")) {
                                //mettre un point padding ici, génère une erreure
                                Group {
                                    HStack {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.blue)
                                        Text("Rate us in the App store")
                                        Spacer()
                                        //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                    }// Fin HStack
                                    
                                    HStack {
                                        Image(systemName: "twitter")
                                            .foregroundColor(.blue)
                                        Text("Twitter")
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image(systemName: "facebook")
                                            .foregroundColor(.blue)
                                        Text("Facebook")
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image(systemName: "instagram")
                                            .foregroundColor(.blue)
                                        Text("Instagram")
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image(systemName: "tiktok")
                                            .foregroundColor(.blue)
                                        Text("Tik Tok")
                                        Spacer()
                                    }
                                    
                                } //Group End
                            } //FIN de section
                            
                            Section(header: Text("MORE")) {
                                HStack {
                                    Image(systemName: "star.circle")
                                        .foregroundColor(.blue)
                                    Text("The science of Kaitiaki")
                                    Spacer()
                                    //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                }// Fin HStack
                                
                                HStack {
                                    Image(systemName: "newspaper")
                                        .foregroundColor(.blue)
                                    Text("Kaitiaki's Blog")
                                    Spacer()
                                    //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                }// Fin HStack
                                
                                HStack {
                                    Image(systemName: "questionmark.circle")
                                        .foregroundColor(.blue)
                                    Text("Help")
                                    Spacer()
                                    //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                }// Fin HStack
                                
                                HStack {
                                    Image(systemName: "")
                                        .foregroundColor(.blue)
                                    Text("Log out")
                                    Spacer()
                                    //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                }// Fin HStack
                            } //Fin de section
                            
                            Section(header: Text("LEGAL INFORMATION")) {
                                HStack {
                                    Image(systemName: "")
                                        .foregroundColor(.blue)
                                    Text("Privacy policy")
                                    Spacer()
                                    //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                }
                                
                                HStack {
                                    Image(systemName: "")
                                        .foregroundColor(.blue)
                                    Text("Terms of use")
                                    Spacer()
                                    //Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                                }
                            } //Fin de section
                            
                        } //End of VStack
                    }
                    
                    .toolbar {
                        ToolbarItem {
                            Button(
                                action: {isPresented = false},
                                label: {Text("Exit")})
                        }
                    }
                    .padding()
                } //Fin de la Nav View
            } //fin de .sheet
        }//
        //} //Fin du Groupe
    }
    //fin de test
    /*
     
     */
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {  ProfileView()  }
    }
}
