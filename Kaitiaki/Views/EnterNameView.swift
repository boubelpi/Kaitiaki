//
//  EnterNameView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import SwiftUI

struct EnterNameView: View {
    @StateObject var singl = NameOfUser.singleton
    var body: some View {
            NavigationView() {
                ZStack {
                    Color.accentColor.ignoresSafeArea()
                    VStack {
                        Text("""
                    Hello
                    """).font(.largeTitle).foregroundColor(.white)
                        Text("""
Please, enter your name before using our app.
""").foregroundColor(.white).font(.system(size: 19))
                        Spacer(minLength: 51)
                        HStack {
                            TextField("Name", text: $singl.username).foregroundColor(.white).background(RoundedRectangle(cornerRadius: 14).foregroundColor(.gray).frame(height: 51))
                        }
                        Spacer(minLength: 89)
                        NavigationLink(destination: TabBarView().navigationBarBackButtonHidden(true)) {
                            Text("Start using app").foregroundColor(.black)
                        }
                        .background(RoundedRectangle(cornerRadius: 7).foregroundColor(.white).frame(width: 154, height: 100))
                        Spacer(minLength: 333)
                    }
                }
            }
    }
}

struct EnterNameView_Previews: PreviewProvider {
    static var previews: some View {
        EnterNameView()
    }
}
