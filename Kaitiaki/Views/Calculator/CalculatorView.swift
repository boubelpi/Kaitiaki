//
//  CalculatorView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 05/06/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var txt : String = ""
    var body: some View {
            VStack {
                Spacer()
                Text("Easily view an amount of CO2e")
                    .font(.largeTitle)
                Spacer()
                VStack {
                    Text("Enter an amount of CO2e below")
                    TextField("", text : $txt)
                        .keyboardType(.numberPad)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                        .frame(width: 100,height: 50)
                        .background(Rectangle().fill(Color.white).shadow(radius : 3))
                    Text("kg CO2e")
                }
                .background(Rectangle().fill(Color.gray))
                Spacer()
                HStack {
                    VStack {
                        Text(String(find_water(txt)))
                            .font(.largeTitle)
                        Text("liters of bottled water")
                    }
                    .background(Rectangle().fill(Color.gray))
                    VStack {
                        Text(String(find_voiture(txt)))
                            .font(.largeTitle)
                        Text("km by car")
                    }
                    .background(Rectangle().fill(Color.gray))
                    VStack {
                        Text(String(find_tshirts(txt)))
                            .font(.largeTitle)
                        Text("t shirts")
                    }
                    .background(Rectangle().fill(Color.gray))
                }
                Spacer()
                HStack {
                    VStack {
                        Text(String(find_boeuf(txt))).font(.largeTitle)
                        Text("meal with beef")
                    }
                    .background(Rectangle().fill(Color.gray))
                    VStack {
                        Text(String(find_biere(txt))).font(.largeTitle)
                        Text("liters of beer")
                    }
                    .background(Rectangle().fill(Color.gray))
                }
                Spacer()
                Spacer()
            }
        }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(txt: "")
    }
}
