//
//  CalculatorView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var co2_calc : CO2e = CO2e(ar_of_all: [], ar_of_types: [])
    var body: some View {
        Text("""
Your usage emits **\(co2_calc.co2_week) kg CO2e per week**. This value includes the use of your devices, the transmission of data and the manufacturing and use of data centers.

But the impact of the manufacturing of your devices is not included.

**The \(co2_calc.co2_week) kg CO2e per week of emissions is equivalent to \(co2_calc.co2_year) kg CO2e per year.

Below, your yearly impact is given:**
"""
        ).padding()
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
