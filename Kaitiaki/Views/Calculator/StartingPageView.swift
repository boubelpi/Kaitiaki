//
//  StartingPageView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 07/06/23.
//

import SwiftUI

struct StartingPageView: View {
    @State private var emails : Int = 0
    @State private var stream : Int = 0
    @State private var visio : Int = 0
    var body: some View {
        VStack {
            Text("Discover the impact of  your digital usages on the climate")
                .font(.largeTitle)
            Text("""
               Three parameters have been chosen, these are the most recurrent uses.
                
                We will measure your carbon footprint of emails, streaming or visiocalls and obtain the amount of CO2 you emit in a week or in a year.

                 We will then compare the impact of your usages
                 to the manufacturing of your appliances.
               """)
            VStack(alignment: .leading, spacing : 12) {
                HStack {
                    Text("""
                 \(emails) emails sent
                 
                 per week
                 """)
                    Text("i")
                }
            }
            .frame(width: 100, height: 130, alignment: .leading)
            .background(Rectangle().foregroundColor(.blue))
            VStack(alignment: .leading, spacing : 12) {
                Text("""
                \(stream) hours of streaming
                
                per week
                """)
            }
            .frame(width: 100, height: 130, alignment: .leading)
            .background(Rectangle().foregroundColor(.blue))
            VStack(alignment: .leading, spacing : 12) {
                Text("""
                 \(visio) hours of videocalls
                 
                 per week
                 """)
            }
            .frame(width: 100, height: 130, alignment: .leading)
                .background(Rectangle().foregroundColor(.blue))
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct StartingPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartingPageView()
    }
}
