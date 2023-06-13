//
//  PlayWithDataView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 12/06/23.
//

import SwiftUI

struct PlayWithDataView: View {
    var body: some View {
        Group {
            Text("Did you know that... ?")
                .bold()
                .padding(.top, 10)
            Text("(The following data was extracted from the ADEME with courtesy of the ADEME)")
                .padding(.top, 10)
            Text("-15,000 KM: this is the average distance travelled by a piece of digital data (email, download,video,web request...)")
                .font(.body)
                .padding(.top, 10)
            Text("-120 to 140 kg: of waste per year is produced by an employee in the tertiary sector, including 3⁄4 kg of paper")
                .font(.body)
                .padding(.top, 10)
        }//End of Group
        Group {
            Text("-21 % : It is the share of computer equipment in the electricity consumption of an office company(the figure is growing")
                .font(.body)
                .padding(.top, 10)
            Text("-2/3 of this consumption occurs during periods of inactivity.")
                .font(.body)
                .padding(.top, 10)
        }//End of Group
        Group {
            Text("-The manufacture of a 2kg computer means: 800kg of raw materials used, 124kg of CO2 generated, out of the 169kg emitted over its entire life cycle.")
                .font(.body)
                .padding(.top, 10)
            Text("-A multifunction device (printer + photocopier + scanner) consumes up to 50% less energy than the 3 devices it replaces. Sharing a printer or copier with several people saves electricity.")
                .font(.body)
                .padding(.top, 10)
            Text("-A laser printer is often switched on all day because of the preheating required each time it is switched on. However, it is more economical than an inkjet printer when it comes to large prints.")
                .font(.body)
                .padding(.top, 20)
        }
        Group {
            Text("Did you know that ...?")
                .bold()
                .padding(.top, 20)
            Text("(The following data was extracted from Ecoist Club with courtesy of the ECOIST club)")
                .bold()
                .padding(.top, 10)
            Text("-If you keep your smartphone during a year, your GHG impact will be 33 kg of CO2 per year.")
                .padding(.top, 20)
            Text("-In 88% of renewal cases, devices are still in working condition. Extending their lifespan reduces their environmental impact.")
                .padding(.top, 20)
            Text("-If you spend 1 hour per week browsing social media using your mobile internet condition, your carbon footprint is 0.23 kg of CO2 per year.")
                .padding(.top, 20)
        }//End of Group
        Group{
            Text("-If you download or upload 1 photo per week using your mobile internet connection, your carbon footprint is 0.01 kg of CO2 per year.")
            .padding(.top, 20)
            Text("-If you download or upload 100 photos per week using your mobile internet connection, your carbon footprint is 0.01 kg of CO2 per year.")
            .padding(.top, 20)
            Text("-Studies show that humans need a minimum of 19 minutes per day without technological interference to establish a sense of trust.")
                .padding(.top, 20)
        }//End of Group
        Group {
            //Text("mettre soit les sliders de ecoist club, soit les données extraites des sliders")//check saviez vous 2
        }
    }
}

struct PlayWithDataView_Previews: PreviewProvider {
    static var previews: some View {
        PlayWithDataView()
    }
}
