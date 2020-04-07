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

struct ScrollPaging: View {
    
    @State private var index: Int = 0
    @State private var offset: CGFloat = 0
    @State private var oldOffset: CGFloat = 0
    var searchBarShow: Bool = true
    var pages = [
        TrendView(),
        TrendView(),
        TrendView()
    ]
    var titles: [String]
    var leftView = StoryCardView()
    var midView = MainView()
    var rightView = TrendView()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    HStack {
                        Spacer()
                        Text(self.titles[0])
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
                        Text(self.titles[1])
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
                        Text(self.titles[2])
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
                    HStack {
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
                    .offset(x: self.offset)
                    .frame(width: geometry.size.width, height: nil, alignment: .leading)
                    .animation(.easeOut(duration: 0.3))
                    .highPriorityGesture(DragGesture()
                    .onChanged({ value in
                        let height: CGFloat = value.translation.height
                        let width: CGFloat = value.translation.width
                        self.oldOffset = self.offset
                        // 移动x,y都在50以内 并且角度在15以上80以下的手势无视
                        self.offset = (abs(height) <= 50  && abs(width) <= 50) && (atan(height/width) * 57.3 <= 88.5 && atan(abs(height/width)) * 57.3 >= 15) ? self.offset : (width - geometry.size.width * CGFloat(self.index)).keepIndexInRange(min: -(geometry.size.width * 1.191), max: geometry.size.width * 1.191)
                    })
                        .onEnded({ value in
                            if abs(value.predictedEndTranslation.width) >= geometry.size.width / 2 {
                                var nextIndex: Int = (value.predictedEndTranslation.width < 0) ? 1 : -1
                                nextIndex += self.index
                                self.index = nextIndex.keepIndexInRange(min: -1, max: self.pages.endIndex - 2)
                            }
                            
                            withAnimation { self.offset = ( -414 * CGFloat(self.index)).keepIndexInRange(min: -414, max: 414) }
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
        ScrollPaging(titles: ["关注", "广场", "趋势"])
    }
}

struct ScrollPagingDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPagingDemo().previewDevice("iPhone 11")
    }
}
