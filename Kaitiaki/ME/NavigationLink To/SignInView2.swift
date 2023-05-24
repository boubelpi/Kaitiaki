//
//  SignInView2.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 13/05/23.
//NE FONCTIONNE PAS

import SwiftUI

struct SignInView2: View {
//pour avoir une fenetre modale
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .myAlignment) {
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                VStack(spacing: 16) {
                    Button(action: {
                     print("Sign up with Apple")
                    }) {
                            Text("Sign up with Apple")
                            .foregroundColor(.black)
                            .frame(width: 350, height: 40)
                            .background(Color.white)
                            .cornerRadius(20)
                         } //fin bouton 1
                        
                      .border(Color.white, width: 2)
                      .cornerRadius(25)
                    
                    Button(action: {
                            print("Sign up with facebook")
                    }) {
                            Text("Sign up with facebook")
                            .foregroundColor(.black)
                            .frame(width: 350, height: 40)
                            .background(Color.white)
                            .cornerRadius(20)
                     } //fin bouton 2
                      .border(Color.white, width: 2)
                      .cornerRadius(25)
                    
                    Button(action: {
                        print("Button tapped")
                    }) {
                        Text("Sign in with Email")
                            .foregroundColor(.black)
                            .frame(width: 350, height: 40)
                            .background(Color.white)
                            .cornerRadius(20)
                    } // fin bouton 3
                    
                   // RoundedRectangle(cornerRadius: 5).fill(Color.white).frame(height: 79)
                    //RoundedRectangle(cornerRadius: 5).fill(Color.white).frame(height: 79)
                }
                .alignmentGuide(VerticalAlignment.myAlignment) { dimension in
                    dimension[VerticalAlignment.center]
                }
                .layoutPriority(1)
            }
            .padding([.leading, .trailing], 24)
        }
    }
    
}

struct SignInView2_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}

// MARK

extension HorizontalAlignment {
  
    enum MyHorizontal: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat
                 { d[HorizontalAlignment.center] }
    }

    static let myAlignment =
                 HorizontalAlignment(MyHorizontal.self)
}

extension VerticalAlignment {
    enum MyVertical: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat
                 { d[VerticalAlignment.center] }
    }
  
    static let myAlignment = VerticalAlignment(MyVertical.self)
}

extension Alignment {
    static let myAlignment = Alignment(horizontal: .myAlignment,
                               vertical: .myAlignment)
}

/*
struct SignInView2: View {
    var body: some View {
        
        VStack {
            Text("Create an account")
                .padding(10)
            Text("To save your performance data, follow your progress et start your journey, you will need to create an account.")
              Spacer()
            
            
            Button(action: {
                    print("Sign up with Apple")
            }) {
                Text("Sign up with Apple")
                  .frame(minWidth: 0, maxWidth: .infinity)
                  .font(.system(size: 18))
                  .padding()
                  .foregroundColor(.white)
             } //fin bouton 1
              .border(Color.white, width: 2)
              .cornerRadius(25)
            
            Button(action: {
                    print("Sign up with facebook")
            }) {
                Text("Sign up with facebook")
                  .frame(minWidth: 0, maxWidth: .infinity)
                  .font(.system(size: 18))
                  .padding()
                  .foregroundColor(.white)
             } //fin bouton 2
              .border(Color.white, width: 2)
              .cornerRadius(25)
            
            Button(action: {
                    print("Sign up with email")
            }) {
                Text("Sign up with email")
                  .frame(minWidth: 0, maxWidth: .infinity)
                  .font(.system(size: 18))
                  .padding()
                  .foregroundColor(.white)
             } //fin bouton 3
              .border(Color.white, width: 2)
              .cornerRadius(25)
            
            Text("Already signed up ?")
            Text("Log in")
                .padding(10)
            Text("By creating your account, you accept the general conditions and the privacy policy")
                .padding(15)
            Text("General conditions | Privacy policy")
        }
    }
}

struct SignInView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}*/

/*
struct SignInView2: View {
    var body: some View {
        ZStack {
     //couleur bleue       Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                Group{
                    Text("WELCOME BACK")
                        .foregroundColor(.white)
                    Spacer().frame(height: 50)
                    Text("You can record your past consumptions, see your achievements and performance if you sign in")
                        .foregroundColor(.white)
                    Spacer().frame(height: 150)
                }
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("Sign in with Apple")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 40)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("Sign in with Facebook")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 40)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                Button(action: {
                    print("Button tapped")
                }) {
                    Text("Sign in with Email")
                        .foregroundColor(.black)
                        .frame(width: 350, height: 40)
                        .background(Color.white)
                        .cornerRadius(20)
                }
                Spacer().frame(height: 150)
                Text("By creating an account, you agree to Kaitiaki's Terms & conditions and Privacy Policy.")
                    .foregroundColor(.white)
                Spacer().frame(height: 20)
                Text("Terms & Conditions | Privacy Policy")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.blue)
            }
        }
    }
}

struct SignInView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}*/



