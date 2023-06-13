//
//  DynamicLinkTextView.swift
//  Kaitiaki
//
//  Created by Pavel Boubel on 13/06/23.
//

import SwiftUI
struct DynamicLinkTextView: View {
    @State var text: String = "I want text like this, with NavigationLinks to another View. However, this doesn't work"
    @State var wordsWLinks: [String] = ["CO2", "converter"]
    @State var selection: String?
    @State var result : String = "0.00"
    var textArray: [String]{
        text.components(separatedBy: " ")
    }
    var body: some View {
        NavigationView{
            VStack{
                MultilineHStack(textArray){ text in
                    VStack{
                        if wordsWLinks.contains(text.removePunctiation()){
                            NavigationLink(text + " ", destination: ConverterView(txt : result))
                        }else{
                            Text(text + " ").fixedSize()
                        }
                    }
                }
            }
        }
    }
}

public struct MultilineHStack: View {
    struct SizePreferenceKey: PreferenceKey {
        typealias Value = [CGSize]
        static var defaultValue: Value = []
        static func reduce(value: inout Value, nextValue: () -> Value) {
            value.append(contentsOf: nextValue())
        }
    }
    
    private let items: [AnyView]
    @State private var sizes: [CGSize] = []
    
    public init<Data: RandomAccessCollection,  Content: View>(_ data: Data, @ViewBuilder content: (Data.Element) -> Content) {
        self.items = data.map { AnyView(content($0)) }
    }
    
    public var body: some View {
        GeometryReader {geometry in
            ZStack(alignment: .topLeading) {
                ForEach(self.items.indices) { index in
                    self.items[index].background(self.backgroundView()).offset(self.getOffset(at: index, geometry: geometry))
                }
            }
        }.onPreferenceChange(SizePreferenceKey.self) {
            self.sizes = $0
        }
    }
    
    private func getOffset(at index: Int, geometry: GeometryProxy) -> CGSize {
        guard index < sizes.endIndex else {return .zero}
        let frame = sizes[index]
        var (x,y,maxHeight) = sizes[..<index].reduce((CGFloat.zero,CGFloat.zero,CGFloat.zero)) {
            var (x,y,maxHeight) = $0
            x += $1.width
            if x > geometry.size.width {
                x = $1.width
                y += maxHeight
                maxHeight = 0
            }
            maxHeight = max(maxHeight, $1.height)
            return (x,y,maxHeight)
        }
        if x + frame.width > geometry.size.width {
            x = 0
            y += maxHeight
        }
        return .init(width: x, height: y)
    }
    
    private func backgroundView() -> some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.clear)
                .preference(
                    key: SizePreferenceKey.self,
                    value: [geometry.frame(in: CoordinateSpace.global).size]
                )
        }
    }
}
struct DynamicLinkTextView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicLinkTextView()
    }
}
extension String{
    func removePunctiation() -> String {
        self.trimmingCharacters(in: CharacterSet(charactersIn: ",."))
    }
}
