//
//  SignInView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 09/05/23.
//FICHIER OBSOLETE

import SwiftUI
import Foundation

struct SignInView: View {
    var body: some View {
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
            
            Text("Already have an account ?")
            Text("Log in")
            Text("By creating an account, you agree to Kaitiaki's Terms & conditions and Privacy Policy.")
                .foregroundColor(.white)
            Spacer().frame(height: 20)
            Text("Terms & Conditions | Privacy Policy")
                .foregroundColor(.white)
                
        } // fin de la Zstack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    } //fin du body
} //fin de la struct

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
