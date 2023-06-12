//
//  MyProfileView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 12/06/23.
//

import SwiftUI

struct MyProfileView: View {
    var body: some View {
        ScrollView {
            HStack {
                Spacer()
                Text("My profile")
                    .bold()
                    .frame(alignment: .leading)
                    .font(.system(size: 25))
                Spacer(minLength: 91)
                Spacer(minLength: 141)
            }
            VStack {
                HStack {
                    Ellipse().foregroundColor(.gray).frame(width: 100, height: 100)
                    Spacer()
                    VStack {
                        Text("Nome Cognome")
                            .bold()
                            .frame(alignment: .leading)
                            .font(.system(size: 25))
                        Text("email@email.it")
                            .font(.system(size: 15, weight: .thin))
                    }
                    Spacer()
                }
                Text("Your statistics:")
                    .bold()
                    .frame(alignment: .center)
                    .font(.system(size: 26))
                    .background(Rectangle().frame(width: 238, height: 42).foregroundColor(.white))
            }
            //Spacer(minLength: 51)
            VStack(spacing: 43) {
                VStack {
                    HStack {
                        Text("""
                         Your amount of CO2 (according to calculator):
                        """).frame(alignment: .leading).font(.system(size: 19, weight: .bold))
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    HStack {
                        Text("\(round_calc(ProfileResults.singletone.LastCalcResultWeek,2)) kg per week; \(round_calc(ProfileResults.singletone.LastCalcResultYear,2)) kg per year.").frame(alignment: .leading).font(.system(size: 15, weight: .medium))
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                }
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.accentColor).frame(width: 365, height: 85))
                .frame(alignment: .leading)
                .padding(39)
                VStack {
                    HStack {
                        Text("""
                 Percentage of correct answers in quiz:
                """).frame(alignment: .leading).font(.system(size: 19, weight: .bold))
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("0.00 %").frame(alignment: .leading).font(.system(size: 15, weight: .medium))
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer(minLength: 69)
                        Spacer(minLength: 82)
                    }
                }
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.accentColor).frame(width: 365, height: 85))
                .frame(alignment: .leading)
                .padding(39)
                /*VStack {
                    HStack {
                        Text("""
             Number of opened tips
            """).frame(alignment: .leading).font(.system(size: 19, weight: .bold))
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("0 / 15 tips").frame(alignment: .leading).font(.system(size: 15, weight: .medium))
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer(minLength: 31)
                        Spacer(minLength: 174)
                    }
                }
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.accentColor).frame(width: 365, height: 85))
                .frame(alignment: .leading)
                .padding(39)*/
            }
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
