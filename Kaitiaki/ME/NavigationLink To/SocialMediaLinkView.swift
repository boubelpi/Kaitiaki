//
//  SocialMediaLinkView.swift
//  Kaitiaki
//
//  Created by Elodie Iparraguirre on 14/05/23.
//

import SwiftUI

struct SocialMediaLinkView: View {
    var title: String
    var image: String
    var url: String
    var body: some View {
        if let link = URL(string: url) {
            Link(destination: link) {
                Label {
                    Text(title)
                } icon: {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                    
                }

            }
        }
    }
}

