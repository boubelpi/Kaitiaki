//
//  AnimatedTabBar.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case calculator
    case converter
    case quiz_tips
    case profile
}

func findImage (_ tabBarItem : String) -> String {
    switch tabBarItem{
    case "calculator":
        return "leaf.fill"
    case "converter":
        return "carbon.dioxide.cloud.fill"
    case "quiz_tips":
        return "message"
    default:
        return "person"
    }
}

struct AnimatedTabBar: View {
    @Binding var selectedTab : Tab
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) {tab in
                    Spacer()
                    Image(systemName: findImage(tab.rawValue))
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? .blue : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 31)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct AnimatedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTabBar(selectedTab: .constant(.converter))
    }
}
