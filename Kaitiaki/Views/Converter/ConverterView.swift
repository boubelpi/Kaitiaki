//
//  CalculatorView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 05/06/23.
//

import SwiftUI
import ModalView

struct ConverterView: View {
    @State var txt : String = ""
    var body: some View {
        ModalPresenter {
            VStack {
                Text("Easily view an amount of CO2e")
                    .font(.title)
                Spacer()
                Text("By using the converter below, we can have the equivalent of this CO2 quantity in different areas.")
                Spacer()
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
                ModalLink(destination: PopUpConverterView(txt : txt)) {
                    Text("Validate")
                }.foregroundColor(.green)
                    .buttonStyle(.bordered)
                    .tint(.accentColor)
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}
