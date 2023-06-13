//
//  PopupSources.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import SwiftUI

struct PopupSources: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Sources and hypothesis")
                    .font(.title)
                Spacer()
                Text("""
All calculations presented here are from ADEME and are based on a study conducted by Négaoctet.
It is the result of 36 months of research work by LCIE Bureau Veritas, APL Data Center, GreenIT.fr and DDemain.

Assumptions regarding emails:
— Writing time: 3 minutes,
— Only one recipient per email
— Time to read the message: 10 seconds
— Device and network similar to that of the sender.
— Email is stored for a period of 10 years by both the sender and recipient.
— An email without attachments has a weight of 75 kB.
— All the impact is assigned to the sender.

Assumptions regarding streaming:
— The sizes of 700 MB, 3 GB, and 7 GB per hour are attributed to the qualities "low definition," "high definition," and "4K," respectively.
— The data center calculations were performed using specific data from the Netflix platform.

Assumptions regarding visioconference:
— The designated qualities of "audio," "low definition," and "high definition" correspond to video sizes amounting to 164 MB, 700 MB, and 3 GB per hour, respectively.
— The assumptions made for streaming regarding data transmission and data centers have been extended to video conferencing.
""")
                Spacer()
                Spacer()
            }
        }
    }
}

struct PopupSources_Previews: PreviewProvider {
    static var previews: some View {
        PopupSources()
    }
}
