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

func tabItemLabel (_ tabBarItem : String) -> String {
    switch tabBarItem {
    case "calculator":
        return "carbon footprint"
    case "converter":
        return "CO2e converter"
    case "quiz_tips":
        return "quiz and tips"
    default:
        return "profile"
    }
}

struct AnimatedTabBar: View {
    @Binding var selectedTab : Tab
    var body: some View {
        ZStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) {tab in
                    VStack {
                        Image(systemName: findImage(tab.rawValue))
                            .scaleEffect(selectedTab == tab ? 1.0 : 0.75)
                            .foregroundColor(selectedTab == tab ? .blue : .gray)
                            .font(.system(size: 22))
                            .rotationEffect(.degrees(selectedTab == tab ? 73 : 0))
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.1)) {
                                    selectedTab = tab
                                }
                            }
                        Text(tabItemLabel(tab.rawValue))
                            .foregroundColor(selectedTab == tab ? .blue : .gray)
                            .font(.system(size: 12))
                    }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .padding()
        }
    }
}

struct AnimatedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTabBar(selectedTab: .constant(.converter))
    }
}
