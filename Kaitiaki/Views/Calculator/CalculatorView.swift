//
//  CalculatorView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var co2_calc : [CO2e] = [CO2e(ar_of_all: [], ar_of_types: [], ar_of_strings: [], needed_ar: [])]
    var body: some View {
        VStack {
            Text("""
Your usage emits **\(round_calc(co2_calc[0].co2_week,2)) kg CO2e per week**. This value includes the use of your devices, the transmission of data and the manufacturing and use of data centers.

But the impact of the manufacturing of your devices is not included.

**The \(round_calc(co2_calc[0].co2_week,2)) kg CO2e per week of emissions is equivalent to \(round_calc(co2_calc[0].co2_year,2)) kg CO2e per year.

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
                                .scaleEffect(x: 1, y: 4, anchor: .center)
                                .padding([.leading,.trailing],10)
                            Text(round_calc(t.a, 2))
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
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
