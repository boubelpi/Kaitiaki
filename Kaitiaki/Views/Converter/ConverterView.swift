//
//  CalculatorView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 05/06/23.
//

import SwiftUI

struct ConverterView: View {
    @State var txt : String = ""
    var body: some View {
        ScrollView {
            VStack {
                Text("CO2 converter")
                    .font(.title)
                Spacer(minLength: 21)
                Text("By using the converter below, we can have the equivalent of this CO2 quantity in different areas.")
                Text("(Source: ADEME)")
                Spacer(minLength: 19)
                VStack {
                    Text("Enter an amount of CO2e below")
                    TextField("", text : $txt)
                        .keyboardType(.numberPad)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                        .frame(width: 100,height: 50)
                        .background(Rectangle().background(Color.white).foregroundColor(.white))
                    Text("kg CO2e")
                }
                .background(Rectangle().fill(Color.gray))
                Spacer()
                Spacer()
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
}
