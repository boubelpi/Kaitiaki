//
//  PopUpConverterView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 09/06/23.
//

import SwiftUI

struct PopUpConverterView: View {
    @State var txt : String = ""
    var body: some View {
        Spacer()
        Spacer()
        HStack {
            VStack {
                Text(String(find_water(txt)))
                    .font(.largeTitle)
                Text("liters of bottled water")
            }
            .background(Rectangle().fill(Color.accentColor))
            VStack {
                Text(String(find_voiture(txt)))
                    .font(.largeTitle)
                Text("km by car")
            }
            .background(Rectangle().fill(Color.accentColor))
            VStack {
                Text(String(find_tshirts(txt)))
                    .font(.largeTitle)
                Text("t shirts")
            }
            .background(Rectangle().fill(Color.accentColor))
        }
        Spacer(minLength: 0.5)
        HStack {
            VStack {
                Text(String(find_boeuf(txt))).font(.largeTitle)
                Text("meal with beef")
            }
            .background(Rectangle().fill(Color.accentColor))
            VStack {
                Text(String(find_biere(txt))).font(.largeTitle)
                Text("liters of beer")
            }
            .background(Rectangle().fill(Color.accentColor))
        }
        Spacer()
        Spacer()
    }
}

struct PopUpConverterView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpConverterView(txt : "")
    }
}
