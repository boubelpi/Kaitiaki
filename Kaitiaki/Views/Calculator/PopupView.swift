//
//  PopupView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack {
            Text("Discover the impact of your digital usages on the climate").font(.largeTitle)
            Text("""
             Measure the carbon footprint of emails, streaming or
             visiocalls & compare the impact of these usages
             to the construction of your appliances
             """).multilineTextAlignment(.trailing)
            Spacer()
            Image(systemName: "info")
                .background(Circle().foregroundColor(.gray).frame(width: 30, height: 30)).multilineTextAlignment(.leading)
            Text("""
            With regards to digital devices, these are the most recurrent
            uses on peoples’ devices (laptop, desktop, smartphone, tablet,
            phone and TV).

            There might be more but we cannot calculate everything at this stage. We also lack data about social media and other things.
            """)
            .background(Rectangle().foregroundColor(.gray))
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}