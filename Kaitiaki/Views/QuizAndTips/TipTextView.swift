//
//  TipTextView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import SwiftUI

struct TipTextView: View {
    var t : tip
    var body: some View {
        ScrollView {
            VStack {
                Text(t.label_of_tip)
                    .font(.title)
                    .foregroundColor(.accentColor)
                    .bold()
                Text("Source: " + t.source)
                    .font(.system(size: 15, weight: .thin))
                    .italic()
                Text(t.text).font(.body)
                    .padding(.top, 10)
            }
        }
    }
}

struct TipTextView_Previews: PreviewProvider {
    static var previews: some View {
        TipTextView(t: all_tips.singleton.ar_of_all[0])
    }
}
