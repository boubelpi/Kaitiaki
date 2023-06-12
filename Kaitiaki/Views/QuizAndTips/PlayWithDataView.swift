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
            Text("The following is extracted from: ADEME: « ECO-Responsable au bureau » « Actions efficaces et bonnes résolutions»")
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
            
            Text(" »")
                .italic()
                .font(.body)
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
