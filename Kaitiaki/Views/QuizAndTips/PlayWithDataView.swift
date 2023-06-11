//
//  PlayWithDataView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 12/06/23.
//

import SwiftUI

struct PlayWithDataView: View {
    var body: some View {
        Text("-Around 200 days a year are spent in the office")
           // Color("AccentColor2") it works
            .font(.body)
            .padding(.top, 10)
        Text("-15,000 KM: this is the average distance travelled by a piece of digital data (email, download,video,web request...)")
            .font(.body)
            .padding(.top, 10)
        Text("-120 to 140 kg: of waste per year is produced by an employee in the terƟaire sector, including 3⁄4 kg of paper")
            .font(.body)
            .padding(.top, 10)
        Text("-21 % : It is the share of computer equipment in the electricity consumption of an office company(the figure is growing")
            .font(.body)
            .padding(.top, 10)
        Text("2/3 of this consumption occurs during periods of inactivity.")
            .font(.body)
            .padding(.top, 10)
        Text("")
        
    }
}

struct PlayWithDataView_Previews: PreviewProvider {
    static var previews: some View {
        PlayWithDataView()
    }
}
