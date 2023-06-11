//
//  SettingsFinalView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 14/05/23.
//
//(Original) SettingsView devient SettingsFinalView

import SwiftUI

struct SettingsFinalView: View {
    @Binding var settings: Settings //pour relier les state qui sont dans le contentview
    
    var body: some View {
            Section(header: Text("SETTINGS")) {
                ScrollView {
                    Group {
                        HStack {
                            Image(systemName: "speaker.wave.3.fill")
                                .foregroundColor(.blue)
                            Text("Interface sounds")
                            Spacer()
                            Toggle(isOn: $settings.isInterfaceSoundsEnabled) {}
                        }
                    } //Group End
                    
                    Group {
                        HStack {
                            Label(
                                title: {
                                    Text("""
                             Do you suffer from
                             color blindness?
                            """)
                                    .fixedSize(horizontal: true, vertical: false)
                                },
                                icon: {
                                    Image(systemName: "eye.trianglebadge.exclamationmark")
                                        .foregroundColor(.red)
                                }
                            )
                            Spacer()
                            Toggle(isOn: $settings.isSufferingColourBlindness) {}
                        }
                    }
                    
                    Group {
                        HStack {
                            Label(
                                title: {
                                    Text("""
                            Ads preferences
                             see custom ads
                            """)
                                    .fixedSize(horizontal: true, vertical: false)
                                },
                                icon: {
                                    Image(systemName: "play.rectangle.fill")
                                        .foregroundColor(.blue)
                                }
                            )
                            Spacer()
                            Toggle(isOn: $settings.HasAdPreferences) {}
                        }
                    }
                    
                    Group {
                        HStack {
                            Label(
                                title: {
                                    Text("""
                                   Do you suffer
                                   from dyslexia?
                                   We will hide the
                                   challenges that
                                   are not adapted
                                   to your situation
                                   """)
                                },
                                icon: {
                                    Image(systemName: "brain.head.profile")
                                        .foregroundColor(.purple)
                                }
                            )
                            Spacer()
                            Toggle(isOn:$settings.HasAdPreferences) {}
                        }
                    }
                    
                    Group {
                        HStack {
                            Label(
                                title: {
                                    Text("Do you suffer from dyscalculia? We will hide the challenges that are not adapted to your situation")
                                },
                                icon: {
                                    Image(systemName: "x.squareroot")
                                        .foregroundColor(.red)
                                }
                            )
                            Spacer()
                            Toggle(isOn: $settings.isSufferingDyscalculia) {}
                            
                        }
                    }
                    
                    NavigationLink(destination: UpgradeProView()) {
                        Label(
                            title: { Text("change language")},
                            icon: {
                                Image(systemName:
                                        "quote.bubble")
                                /* .resizable()*/
                                /*.scaledToFit()*/
                                .foregroundColor(.blue)
                            }
                        )
                    }
                    
                    NavigationLink(destination: EmailView()) {
                        Label(
                            title: { Text("Change Email")},
                            icon: {
                                Image(systemName:
                                        "envelope.fill")
                                /* .resizable()*/
                                /*.scaledToFit()*/
                                .foregroundColor(.blue)
                            }
                        )
                    }
                    NavigationLink(destination: PasswordView()) {
                        Label(
                            title: { Text(" Change Password")},
                            icon: {
                                Image(systemName:
                                        "lock.fill")
                                /*.resizable()*/
                                .scaledToFit()
                                .foregroundColor(.blue)
                            }
                        )
                    }
                }
                .padding()
            }
        }//Fin section settings
    }



