//
//  PopupView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 08/06/23.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Discover the impact of your digital usages on the climate").font(.title)
                Spacer(minLength: 30)
                HStack {
                    Spacer()
                    Image(systemName: "info")
                        .background(Circle().foregroundColor(.gray).frame(width: 30, height: 30)).multilineTextAlignment(.leading)
                    Spacer(minLength: 51)
                    Spacer(minLength: 51)
                    Spacer().frame(width: 141, height: 10)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Spacer()
                HStack {
                    Text("""
             Measure the carbon footprint of emails, streaming or visiocalls & compare the impact of these usages to the construction of your appliances
             """)
                    Spacer(minLength: 31)
                }
                Text("""
            With regards to digital devices, these are the most recurrent uses on peoples’ devices (laptop, desktop, smartphone, tablet, phone and TV).
            
            There might be more but we cannot calculate everything at this stage. We also lack data about social media and other things.
            """)
                Spacer(minLength: 30)
                HStack {
                    Text("(Source: ADEME)")
                    Spacer()
                }
                Spacer(minLength: 30)
                HStack {
                    Text("""
            What is CO2e?
            While carbon dioxide (CO2) holds a prominent role as a greenhouse gas, it is not the sole contributor to climate change. Various other gases also play a part in driving global warming. These gases are collectively measured using a single metric known as CO2e (carbon dioxide equivalent).
            
            (Source:www.coolerfuture.com/blog/co2e)
            """)
                    Spacer(minLength: 41)
                }
            }
                Spacer(minLength: 300)
        }
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
