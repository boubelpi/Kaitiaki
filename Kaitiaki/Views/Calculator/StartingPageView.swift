//
//  StartingPageView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 07/06/23.
//

import SwiftUI
import UIKit

struct StartingPageView: View {
    @State private var emails : Int = 0
    @State private var stream : Int = 0
    @State private var visio : Int = 0
    @State private var isEditing = false
    @State private var popup_modal = false
    var emails_d : Binding<Double> {
        Binding <Double>(get : {
            return Double(emails)
        },
                         set: {
            print($0.description)
            emails = Int($0)
        })
    }
    var stream_d : Binding<Double> {
        Binding <Double>(get : {
            return Double(stream)
        },
                         set: {
            print($0.description)
            stream = Int($0)
        })
    }
    var visio_d : Binding<Double> {
        Binding <Double>(get: {
            return Double(visio)
        }, set : {
            print($0.description)
            visio = Int($0)
        })
    }
    var body: some View {
        NavigationView {
            VStack {
                Text("Discover the impact of  your digital usages on the climate")
                    .font(.largeTitle)
                Text("""
               Three parameters have been chosen, these are the most recurrent uses.
                
                We will measure your carbon footprint of emails, streaming or videocalls and obtain the amount of CO2 you emit in a week or in a year.
               
                 We will then compare the impact of your usages
                 to the manufacturing of your appliances.
               """)
                NavigationLink(destination: PopupView()) {
                    Label(title: { Text("")},
                          icon: {
                        Image(systemName:
                                "info")
                        /*.resizable()*/
                        .scaledToFit()
                        .foregroundColor(.gray)
                    })
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        HStack {
                            Text("""
                \(emails) emails sent per week
                """)
                        }
                    }
                    UISliderView(value: emails_d, minValue: 0.0, maxValue: 1500.0, thumbColor: .red, minTrackColor: .purple, maxTrackColor: .green)
                }
                .frame(width: 210, height: 100, alignment: .leading)
                .background(Rectangle().foregroundColor(Color(uiColor: UIColor(red: 4 / 255, green: 141 / 255, blue : 141 / 255, alpha : 1))))
                HStack {
                    VStack(alignment: .leading, spacing : 12) {
                        Text("""
                \(stream) hours of streaming per week
                """)
                        UISliderView(value: stream_d, minValue: 0.0, maxValue: 70.0, thumbColor: .red, minTrackColor: .purple, maxTrackColor: .green)
                    }
                }
                .frame(width: 220, height : 100, alignment : .leading)
                .background(Rectangle().foregroundColor(Color(uiColor: UIColor(red: 4 / 255, green: 141 / 255, blue : 141 / 255, alpha : 1))))
                HStack {
                    VStack(alignment: .leading, spacing : 12) {
                        Text("""
                 \(visio) hours of videocalls per week
                 """)
                        UISliderView(value: visio_d, minValue: 0.0, maxValue: 70.0, thumbColor: .red, minTrackColor: .purple, maxTrackColor: .green)
                    }
                }
                .frame(width: 220, height : 100, alignment : .leading)
                .background(Rectangle().foregroundColor(Color(uiColor: UIColor(red: 4 / 255, green: 141 / 255, blue : 141 / 255, alpha : 1))))
                Spacer()
                /*Spacer()
                 Spacer()*/
            }
        }
    }
}

struct StartingPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartingPageView()
    }
}
