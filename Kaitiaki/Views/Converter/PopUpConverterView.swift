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
        ScrollView {
            Text("CO2 converter").font(.title)
            VStack(spacing: 14) {
                VStack(spacing: 4) {
                    Text(String(find_water(txt)))
                        .font(.largeTitle)
                    Text("liters of bottled water")
                }.background(RoundedRectangle(cornerRadius: 15).fill(Color(UIColor.systemGray5)).frame(width: 331, height: 103))
                    .frame(width: 331, height: 103)
                VStack(spacing: 4) {
                    Text(String(find_voiture(txt)))
                        .font(.largeTitle)
                    Text("km by car")
                }.background(RoundedRectangle(cornerRadius: 15).fill(Color(UIColor.systemGray5)).frame(width: 331, height: 103))
                    .frame(width: 331, height: 103)
                VStack(spacing: 4) {
                    Text(String(find_tshirts(txt)))
                        .font(.largeTitle)
                    Text("t shirts")
                }.background(RoundedRectangle(cornerRadius: 15).fill(Color(UIColor.systemGray5)).frame(width: 331, height: 103))
                    .frame(width: 331, height: 103)
                VStack(spacing: 4) {
                    Text(String(find_boeuf(txt))).font(.largeTitle)
                    Text("meal with beef")
                }
                .background(RoundedRectangle(cornerRadius: 15).fill(Color(UIColor.systemGray5)).frame(width: 331, height: 103))
                .frame(width: 331, height: 103)
                VStack(spacing: 4) {
                    Text(String(find_biere(txt))).font(.largeTitle).frame(alignment: .trailing)
                    Text("liters of beer")
                }
                .background(RoundedRectangle(cornerRadius: 15).fill(Color(UIColor.systemGray5)).frame(width: 331, height: 103))
                .frame(width: 331, height: 103)
                Spacer()
                Spacer()
            }
            .multilineTextAlignment(.leading)
        }
    }
}

struct PopUpConverterView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpConverterView(txt : "")
    }
}
