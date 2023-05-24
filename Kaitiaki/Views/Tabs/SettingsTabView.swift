import SwiftUI

//Avant SettingsTabView etait contentView2

struct SettingsTabView: View {
    @State private var isToggle1 : Bool = false
    @State private var isToggle2 : Bool = false
    @State private var isToggle3 : Bool = false
    @State private var isToggle4 : Bool = false
    @State private var isToggle5 : Bool = false
    @State private var settings = Settings()
    // @State var showModal = false // pour avoir une fenetre modale
    
    var body: some View {
        NavigationView {
                List{
                    Group {
                        NavigationLink(destination: SignInView2()) {
                            Label(
                                title: { Text("Login").font(.system(size: 16)) },
                                icon: {Image(systemName: "iphone.and.arrow.forward")
                                        .foregroundColor(.blue)
                                }
                            ) //code pour fenetre modale **
                            // .onTapGesture{ //**
                            //     self.showModal = true //**
                        } //**
                        //    .sheet(isPresented: self.$showModal) {
                        /* ModalView()*/
                    } //fin code pour fenetre modale
                    ChallengeSectionView()
                    
                    
                    SubscriptionView()
                    SettingsView(settings: $settings)
                    Section("Get In Touch") {
                        Label("Rate us in the App Store", systemImage: "star.fill")
                        SocialMediaLinkView(title: "Twitter",
                                            image: "twitter",
                                            url: "www.twitter.com")
                        SocialMediaLinkView(title: "Facebook",
                                            image: "facebook",
                                            url: "www.facebook.com")
                        SocialMediaLinkView(title: "Instagram",
                                            image: "facebook",
                                            url: "www.facebook.com")
                        SocialMediaLinkView(title: "TikTok",
                                            image: "tiktok",
                                            url: "www.tiktok.com")
                    }
                   
                    
                    MoreView()
                    
                    
                    LegalInformationView()
                }
                
            
        }.listStyle(PlainListStyle())
            .frame(maxWidth: .infinity)
        
    } //fin MyNavigationView
}

//ici on essaye de mettre le tab bar menu
//Menu tabview
/* TabView{
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
 
 }//fin de la Tabview:
 .frame(maxHeight: 50)
 .tabViewStyle(DefaultTabViewStyle())
 // .fixedPosition(horizontal: .center, vertical: .bottom)
 .background(Color.gray.opacity(0.2)) */
// .modifier(TabHeightModifier(height: 50))

//fin de struct contentView2



//struct code pour la fenetre modale de connexion
/*struct ModalView: View {
 @Environment(\.presentationMode) var presentationMode
 
 var body: some View {
 VStack {
 Text("Contenu de la fenetre modale")
 Button("Fermer") {
 self.presentationMode.wrappedValue.dismiss()
 }
 }
 }
 */

//fin du code pour la fenetre modale de connexion


