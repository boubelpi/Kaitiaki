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
    @State private var selEmail : Emails = .smartphone
    @State private var selStream : Stream_e_Visio = .television
    @State private var selVisio : Stream_e_Visio = .laptop
    @State private var attach_email : emailAttachment = .noAttachment
    @State private var attach_stream : streamAttachment = .lowDef
    @State private var attach_visio : visioAttachment = .lowDef
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
                ScrollView {
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
                            UISliderView(value: emails_d, minValue: 0.0, maxValue: 1500.0, thumbColor: .white, minTrackColor: .purple, maxTrackColor: .green)
                            Picker("Device", selection: $selEmail) {
                                Text("Smartphone").tag(Emails.smartphone)
                                Text("Tablet").tag(Emails.tablet)
                                Text("Laptop").tag(Emails.laptop)
                                Text("Desktop").tag(Emails.desktop)
                            }
                            .accentColor(.white)
                            HStack {
                                Picker("Attachment", selection: $attach_email) {
                                    Text("Without attachment").tag(emailAttachment.noAttachment)
                                    Text("Attachment 1 MB").tag(emailAttachment.one_mb_attachment)
                                    Text("Attachment 5 MB").tag(emailAttachment.five_mb_attachment)
                                }
                                .accentColor(.white)
                            }
                        }
                        .frame(width: 252, height: 174, alignment: .leading)
                        .background(Rectangle().foregroundColor(.accentColor))
                        HStack {
                            VStack(alignment: .leading, spacing : 12) {
                                Text("""
                \(stream) hours of streaming per week
                """)
                                UISliderView(value: stream_d, minValue: 0.0, maxValue: 70.0, thumbColor: .white, minTrackColor: .purple, maxTrackColor: .green)
                                Picker("Device", selection: $selStream) {
                                    Text("Smartphone").tag(Stream_e_Visio.smartphone)
                                    Text("Tablet").tag(Stream_e_Visio.tablet)
                                    Text("Television").tag(Stream_e_Visio.television)
                                    Text("Laptop").tag(Stream_e_Visio.laptop)
                                    Text("Desktop").tag(Stream_e_Visio.desktop)
                                }
                                .accentColor(.white)
                                HStack {
                                    Picker("Def", selection: $attach_stream) {
                                        Text("Low Def").tag(visioAttachment.lowDef)
                                        Text("High Def").tag(visioAttachment.highDef)
                                        Text("4K").tag(streamAttachment.four_K)
                                    }
                                    .accentColor(.white)
                                }
                            }
                        }
                        .frame(width: 252, height : 174, alignment : .leading)
                        .background(Rectangle().foregroundColor(.accentColor))
                        HStack {
                            VStack(alignment: .leading, spacing : 12) {
                                Text("""
                 \(visio) hours of videocalls per week
                 """)
                                UISliderView(value: visio_d, minValue: 0.0, maxValue: 70.0, thumbColor: .white, minTrackColor: .purple, maxTrackColor: .green)
                                Picker("Device", selection: $selVisio) {
                                    Text("Smartphone").tag(Stream_e_Visio.smartphone)
                                    Text("Tablet").tag(Stream_e_Visio.tablet)
                                    Text("Television").tag(Stream_e_Visio.television)
                                    Text("Laptop").tag(Stream_e_Visio.laptop)
                                    Text("Desktop").tag(Stream_e_Visio.desktop)
                                }
                                .accentColor(.white)
                                HStack {
                                    Picker("Def", selection: $attach_visio) {
                                        Text("Audio").tag(visioAttachment.audio)
                                        Text("Low Def").tag(visioAttachment.lowDef)
                                        Text("High Def").tag(visioAttachment.highDef)
                                    }
                                    .accentColor(.white)
                                }
                            }
                        }
                        .frame(width: 252, height : 174, alignment : .leading)
                        .background(Rectangle().foregroundColor(.accentColor))
                        //Spacer()
                        /*Spacer()
                         Spacer()*/
                        NavigationLink(destination: CalculatorView()) {
                        Text("Validate")
                        }.foregroundColor(.green)
                            .buttonStyle(.bordered)
                            .tint(.accentColor)
                    }
                }
        }
    }
}

struct StartingPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartingPageView()
    }
}
