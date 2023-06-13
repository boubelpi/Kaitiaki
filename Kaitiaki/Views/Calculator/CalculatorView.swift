//
//  CalculatorView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var co2_calc : [CO2e] = [CO2e(ar_of_all: [], ar_of_types: [], ar_of_strings: [], needed_ar: [])]
    @State private var text = "Would you like to know what your weekly or annual impact is equivalent to ? Let's discover this in the CO2 converter"
    var textArray: [String]{
        text.components(separatedBy: " ")
    }
    @State private var wordsWLinks: [String] = ["CO2", "converter"]
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("""
Your usage emits **\(round_calc(co2_calc[0].co2_week,1)) kg CO2e per week**. This value includes the use of your devices, the transmission of data and the manufacturing and use of data centers.

But the impact of the manufacturing of your devices is not included.

**The \(round_calc(co2_calc[0].co2_week,1)) kg CO2e per week of emissions is equivalent to \(round_calc(co2_calc[0].co2_year,1)) kg CO2e per year.

Below, your yearly impact is given:**
"""
                    ).padding()
                    VStack {
                        ForEach(co2_calc[0].needed_ar) {t in
                            VStack {
                                Text(t.s)
                                HStack {
                                    ProgressView(value: t.a, total: co2_calc[0].needed_ar[co2_calc[0].needed_ar.count - 1].a)
                                        .accentColor(.green)
                                        .scaleEffect(x: 1, y: 5, anchor: .center)
                                    Text(round_calc(t.a, 1))
                                    Text("kg CO2e")
                                }
                                .padding()
                            }
                        }
                    }
                    Spacer()
                    Text("**In general, most of your digital footprint comes from the construction of your devices, not from their use.**")
                    Spacer()
                    Spacer()
                    VStack{
                        MultilineHStack(textArray){ text in
                            VStack{
                                if wordsWLinks.contains(text.removePunctiation()){
                                    NavigationLink(text + " ", destination: ConverterView(txt : round_calc(co2_calc[0].co2_year,1)))
                                }else{
                                    Text(text + " ").fixedSize()
                                }
                            }
                        }
                    }
                    Spacer(minLength: 51)
                }
                }
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
