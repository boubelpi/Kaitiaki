//
//  TipsVignettesView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import SwiftUI

struct TipsVignettesView: View {
    private let grid = [GridItem](repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: grid) {
                ForEach(all_tips.singleton.ar_of_all, id: \.self) {i in
                    NavigationLink(destination: TipTextView(t: i)) {
                        Text(i.label_of_vignette)
                            .foregroundColor(.white)
                    }
                    .background(RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color("AccentColor2"))
                        .padding(15)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width / 2, height: 115)
                    )
                    .padding(37)
                    //  Spacer(minLength: 25)
                }
                Spacer(minLength: 41)
            }
    }
    }
}

struct TipsVignettesView_Previews: PreviewProvider {
    static var previews: some View {
        TipsVignettesView()
    }
}
