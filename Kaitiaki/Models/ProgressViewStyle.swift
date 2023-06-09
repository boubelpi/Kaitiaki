//
//  ProgressViewStyle.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 09/06/23.
//

import Foundation
import SwiftUI

struct MyProgressViewStyle: ProgressViewStyle {
    var myColor: Color

  func makeBody(configuration: Configuration) -> some View {
      ProgressView(configuration)
          .accentColor(myColor)
          .background(Color.green)
          .frame(height: 8.0)
          .scaleEffect(x: 1, y: 2, anchor: .center)
          .clipShape(RoundedRectangle(cornerRadius: 6))
          .padding(.horizontal)
  }
}
