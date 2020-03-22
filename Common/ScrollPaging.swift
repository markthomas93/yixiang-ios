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
        .frame(width: 404, height: 300, alignment: .leading)
        .background(getRandomColor())
    }
}

struct Word {
    var name: String
}

struct ScrollPaging<Content: View & Identifiable>: View {
    
    @State private var index: Int = 0
    @State private var offset: CGFloat = 0
    var searchBarShow: Bool = true
    var pages: [Content]
    var words: [Word]
    var leftView = Page()
    var midView = PostCard()
    var rightView = TrendView()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("\(self.offset)")
                Text(String(self.index))
                ZStack {
                    HStack {
                        Spacer()
                        Text(self.words[0].name)
                            .bold()
                            .foregroundColor(.black)
                            .opacity(Double(self.offset/414 >= 0.5 ? abs(self.offset)/414 : 0.5))
                            .gesture(TapGesture()
                                .onEnded({
                                    self.index = -1
                                    self.offset = geometry.size.width
                                })
                        )
                        Spacer()
                        Text(self.words[1].name)
                            .bold()
                            .foregroundColor(.black)
                            .opacity(Double(abs(self.offset)/414 == 0 ? 1 : ((414 - abs(self.offset)) / 414) <= 0.5 ? 0.5 : (414 - abs(self.offset)) / 414))
                            .gesture(TapGesture()
                                .onEnded({
                                    self.index = 0
                                    self.offset = 0
                                })
                        )
                        Spacer()
                        Text(self.words[2].name)
                            .bold()
                            .foregroundColor(.black)
                            .opacity(Double(self.offset/414 <= -0.5 ? abs(self.offset)/414 : 0.5))
                            .gesture(TapGesture()
                                .onEnded({
                                    self.index = 1
                                    self.offset = -geometry.size.width
                                })
                        )
                        Spacer()
                    }
                    .frame(height: 20)
                    .offset(y: 0)
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 36, height: 3)
                        .offset(x: -(self.offset.keepIndexInRange(min: -geometry.size.width, max: geometry.size.width)/3.68 + 0.5), y: 16)
                        .foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
                        .animation(.spring())
                }
                ZStack {
                    Color(red: 246/255, green: 246/255, blue:246/255)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center, spacing: 0) {
                            self.leftView
                                    .frame(width: geometry.size.width, height: nil)
                            self.midView
                            .frame(width: geometry.size.width)
                            self.rightView
                            .frame(width: geometry.size.width, height: nil)
                        }
                        .offset(x: -geometry.size.width)
                    }
                    .content.offset(x: self.offset)
                    .frame(width: geometry.size.width, height: nil, alignment: .leading)
                    .animation(.easeOut(duration: 0.3))
                    .gesture(DragGesture()
                    .onChanged({ value in
                        self.offset = (value.translation.width - geometry.size.width * CGFloat(self.index)).keepIndexInRange(min: -(geometry.size.width * 1.191), max: geometry.size.width * 1.191)
                    })
                        .onEnded({ value in
                            if abs(value.predictedEndTranslation.width) >= geometry.size.width / 2 {
                                var nextIndex: Int = (value.predictedEndTranslation.width < 0) ? 1 : -1
                                nextIndex += self.index
                                self.index = nextIndex.keepIndexInRange(min: -1, max: self.pages.endIndex - 2)
                            }
                            
                            withAnimation { self.offset = ( -geometry.size.width * CGFloat(self.index)).keepIndexInRange(min: -414, max: 414) }
                        })
                    )
                }
                Spacer()
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

struct ScrollPagingDemo: View {
    var body: some View {
        ScrollPaging(
            pages: (0..<3).map {
                index in Page()
        }, 
                     words: [Word(name: "关注"),Word(name: "广场"),Word(name: "趋势")
        ])
    }
}

struct ScrollPagingDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPagingDemo().previewDevice("iPhone 11")
    }
}
