//
//  MyProfileView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 12/06/23.
//

import SwiftUI

struct MyProfileView: View {
    @ObservedObject var t : ProfileResults
    @State private var a : Double = 0.0
    @State private var b : Double = 0.0
    @State private var prc : Double = 0.0
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image("tiger")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipped()
                    Spacer()
                    VStack {
                        Text(NameOfUser.singleton.username)
                            .bold()
                            .frame(alignment: .leading)
                            .font(.system(size: 25))
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
                        Text("\(round_calc(a,2)) kg per week; \(round_calc(b,2)) kg per year.").frame(alignment: .leading).font(.system(size: 15, weight: .medium))
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
                        Text("\(round_calc(prc, 2)) %").frame(alignment: .leading).font(.system(size: 15, weight: .medium))
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
                Button("Update") {
                    b = ProfileResults.singletone.LastCalcResultYear
                    a = ProfileResults.singletone.LastCalcResultWeek
                    prc = ProfileResults.singletone.percent * 100.0
                }
                .background(RoundedRectangle(cornerRadius: 10).frame(width: 88, height: 61).foregroundColor(Color("AccentColor2")))
            }
        }.navigationTitle("My profile")
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView(t : ProfileResults.singletone)
    }
}
