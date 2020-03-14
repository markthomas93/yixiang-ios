//
//  ScrollPaging.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/13.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct Page: View, Identifiable {
    let id = UUID()

    var body: some View {
        VStack(spacing: 0) {
            Text("")
        }
        .frame(width: 414, height: 300, alignment: .leading)
        .background(getRandomColor())
    }
}

struct SwiftUIPagerView<Content: View & Identifiable>: View {

    @State private var index: Int = 0
    @State private var offset: CGFloat = 0

    var pages: [Content]

    var body: some View {
        GeometryReader { geometry in
            VStack {
              // Text("\(self.offset)")
                HStack {
                    Text("Left")
                        .foregroundColor(.black)
                        .opacity(Double(self.offset/414 >= 0.5 ? abs(self.offset)/414 : 0.5))
                        .font(.system(size: 30, weight: .bold))
                    Text("Main")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                        .opacity(Double(abs(self.offset)/414 == 0 ? 1 : ((414 - abs(self.offset)) / 414) <= 0.5 ? 0.5 : (414 - abs(self.offset)) / 414))
                    Text("Right")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                    .opacity(Double(self.offset/414 <= -0.5 ? abs(self.offset)/414 : 0.5))
                }.padding()
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 80, height: 10)
                    .offset(x: -(self.offset/5), y: 0).padding()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 0) {
                        ForEach(self.pages) { page in
                            page
                                .frame(width: geometry.size.width, height: nil)
                        }
                    }
                    .offset(x: -geometry.size.width)
                }
                .content.offset(x: self.offset)
                .frame(width: geometry.size.width, height: nil, alignment: .leading)
                .animation(.easeOut)
                .gesture(DragGesture()
                    .onChanged({ value in
                        self.offset = (value.translation.width - geometry.size.width * CGFloat(self.index)).keepIndexInRange(min: -621, max: 621)
                    })
                    .onEnded({ value in
                        if abs(value.predictedEndTranslation.width) >= geometry.size.width / 100 {
                            var nextIndex: Int = (value.predictedEndTranslation.width < 0) ? 1 : -1
                            nextIndex += self.index
                            self.index = nextIndex.keepIndexInRange(min: -1, max: self.pages.endIndex - 2)
                        }
                        withAnimation { self.offset = ( -geometry.size.width * CGFloat(self.index)).keepIndexInRange(min: -414, max: 414) }
                    })
                )
            }
        }
    }
}

extension Int {
    func keepIndexInRange(min: Int, max: Int) -> Int {
        switch self {
            case ..<min: return min
            case max...: return max
            default: return self
        }
    }
}

extension CGFloat {
    func keepIndexInRange(min: CGFloat, max: CGFloat) -> CGFloat {
        switch self {
            case ..<min: return min
            case max...: return max
            default: return self
        }
    }
}

func getRandomColor() -> Color {
    let r = Double.random(in: 0..<1)
    let g = Double.random(in: 0..<1)
    let b = Double.random(in: 0..<1)
    return Color(red: r, green: g, blue: b, opacity: 1.0)
}

struct SwiftUIPagerViewDemo: View {
    var body: some View {
        SwiftUIPagerView(
            pages: (0..<3).map {
                index in Page()
        })
    }
}

struct SwiftUIPagerViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPagerViewDemo().previewDevice("iPhone 11")
    }
}


struct View1: View {
    var body: some View {
        Color.gray
        .frame(width: 300, height: 500)
    }
}


struct View2: View {
    var body: some View {
        Color.primary
        .frame(width: 300, height: 500)
    }
}

struct View3: View {
    var body: some View {
        Color.secondary
    }
}


