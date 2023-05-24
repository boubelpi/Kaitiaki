//
//  ContentView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 08/05/23.
//NE FONCTIONNE PAS - FICHER OBSOLETE
/*
import SwiftUI
import Foundation

struct ContentView: View {
    
    @State private var isToggle1 : Bool = false
    @State private var isToggle2 : Bool = false
    @State private var isToggle3 : Bool = false
    @State private var isToggle4 : Bool = false
    @State private var isToggle5 : Bool = false
    
    var body: some View {
    
    func NavigationView() {
            
            VStack {
                
                List{
                    /*The following compiling error: "Extra argument in call" next to the Text view. You may be wondering what's wrong with this as you are just placing a new component into a container. The problem is that Swift doesn't allow you to place more than ten elements within a SwiftUI container, may it be a VStack , HStack , Group , Button or whatever.*/
                    
                    Group {
                        NavigationLink(destination: SignInView()) {
                            
                            Label(
                                title: { Text("Log in")
                                        .font(.system(size: 16))
                                },
                                icon: {
                                    Image(systemName:
                                            "iphone.and.arrow.forward")
                                    /* .resizable()*/
                                    /*.scaledToFit()*/
                                    .foregroundColor(.blue)
                                }
                            )
                        }
                        ChallengeSectionView()
                    }//FIN GROUPE
                    
                    //j'ai deporte une partie de mon code (Challenge section view) dans un autre fichier
                                       
                    SubscriptionView()
                    
                    Section("SETTINGS") {
                        
                        Group{
                            HStack{
                                Image(systemName:
                                        "speaker.wave.3.fill")
                                .foregroundColor(.blue)
                                Text("Interface sounds")
                                Spacer()
                                Toggle(isOn: $isToggle1){
                                }
                            }
                        }
                        HStack{
                            Label(
                                title: { Text("""
                                                 Do you suffer from
                                                 color blindness?
                                                 """)
                                    /*   .multilineTextAlignment(.center)
                                     .frame(width: 150)
                                     .frame(alignment: .leading)*/
                                .fixedSize(horizontal: true, vertical: false)
                                    
                                },
                                icon: {
                                    Image(systemName:
                                            "eye.trianglebadge.exclamationmark")
                                    /* .resizable()*/
                                    /*.scaledToFit()*/
                                    .foregroundColor(.red)
                                }
                            )
                            Spacer()
                            Toggle(isOn: $isToggle2){
                            }
                        }
                        HStack{
                            Label(
                                title: { Text("""
                                        Ads preferences
                                        see custom ads
                                        """)
                                    //   .multilineTextAlignment(.center)
                                    //    .frame(width: 150)
                                    //.frame(alignment: .leading)
                                .fixedSize(horizontal: true, vertical: false)
                                },
                                icon: {
                                    Image(systemName:
                                            "play.rectangle.fill")
                                    /* .resizable()*/
                                    /*.scaledToFit()*/
                                    .foregroundColor(.blue)
                                }
                            )
                            Spacer()
                            Toggle(isOn: $isToggle3){
                            }
                        }
                        Group{
                            HStack{
                                Label(
                                    title: { Text("""
                                           Do you suffer from dyslexia?
                                           we will hide the challenges that are not adapted to your situation
                                           """)
                                    },
                                    icon: {
                                        Image(systemName:
                                                "brain.head.profile")
                                        /* .resizable()*/
                                        /*.scaledToFit()*/
                                        .foregroundColor(.purple)
                                    }
                                )
                                Spacer()
                                Toggle(isOn:$isToggle4){
                                }
                            }
                            
                            HStack{
                                Label(
                                    title: { Text("""
                                    Do you suffer from dyscalculia?
                                    We will hide the challenges that are not adapted to your situation
                                    """)},
                                    icon: {
                                        Image(systemName:
                                                "x.squareroot")
                                        /* .resizable()*/
                                        /*.scaledToFit()*/
                                        .foregroundColor(.pink)
                                    }
                                )
                                Spacer()
                                Toggle(isOn:$isToggle5){
                                }
                            }
                            
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
                            
                            /*HStack{
                                Label(
                                    title: { Text("Change email")},
                                    icon: {
                                        Image(systemName:
                                                "")
                                        /* .resizable()*/
                                        /*.scaledToFit()*/
                                        .foregroundColor(.pink)
                                    }
                                )
                                Spacer()
                            }*/
                            
                            NavigationLink(destination: EmailView()) {
                                Label(
                                    title: { Text("Change Email")},
                                    icon: {
                                        Image(systemName:
                                                "Email")
                                        /* .resizable()*/
                                        /*.scaledToFit()*/
                                        .foregroundColor(.blue)
                                    }
                                )
                            }
                            
                            NavigationLink(destination: PasswordView()) {
                                Label(
                                    title: { Text("Change Password")},
                                    icon: {
                                        Image(systemName:
                                                "lock.fill")
                                        /* .resizable()*/
                                        /*.scaledToFit()*/
                                        .foregroundColor(.blue)
                                    }
                                )
                            }
                            
                            .padding()
                        }
                    }//Fin section settings
                    
                    GetInTouchView()
                    
                    MoreView()
                    
                    SocialView()
                    
                    LegalInformationView()
                    
                    //XXXX
                }.listStyle(PlainListStyle())
                    .frame(maxWidth: .infinity)
                
                //Menu tabview
                TabView{
                   NavigationView {
                        NavigationLink(destination: TipsView()){
                            Text("")//là on mettra un menu avec deux onglets: une pour carbon footprint calculator
                        }
                            //.navigationTitle("Carbon emissions")
                    }
                        .tabItem {
                            Label("Carbon emissions", systemImage: "carbon.dioxide.cloud.fill")
                        }
                   
                    NavigationView {
                        NavigationLink(destination: TipsView()){
                        Text("")//ici on mettra un menu avec 2 onglets:Energy saving tips et low emission internet options.
                        }
                        //.navigationTitle("Tips")
                    }
                            .tabItem {
                                Image(systemName: "lightbulb")
                                Text("Tips")
                            }
                    
                    Text("")//ici on mettra un menu avec 3 onglets: Défis individuel, Challenge en équipe et Communauté.
                        .tabItem {
                            Label("Challenges", systemImage: "square.and.pencil")
                        }
                    Text("")
                        .tabItem {
                            Label("Community", systemImage: "person.3.fill")
                        }
                    Text("")
                        .tabItem {
                            Label("Carbon offsetting", systemImage: "tree.fill")
                        }
                }//fin de la tab bar:
                .tabViewStyle(DefaultTabViewStyle())
               // .fixedPosition(horizontal: .center, vertical: .bottom)
                .background(Color.gray.opacity(0.2))
                .modifier(TabHeightModifier(height: 50))
                
            } //Fin VStack
        } //Fin de func navugationview
    }
    
    struct TabHeightModifier: ViewModifier {
        let height: CGFloat
        func body(content: Content) -> some View {
            content.frame(height: height)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

*/
