//
//  IndexPagging.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/15.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct IndexPagging: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationStackView(transitionType: .custom(.opacity), easing: .spring()) {
            VStack {
                PushView(destination: SearchView()){
                    SearchBar()
                }
                .frame(height: 40)
                ScrollPaging(pages: [
                       TrendView(),
                       TrendView(),
                       TrendView()
                    ],
                             words: [Word(name: "关注"),Word(name: "广场"),Word(name: "趋势")
                ])
                Spacer()
            }
        }
    }
}

struct TestView: View, Identifiable {
    let id = UUID()

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                Text("")
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            .background(getRandomColor())
        }
    }
}

struct IndexPagging_Previews: PreviewProvider {
    static var previews: some View {
        IndexPagging().previewDevice("iPhone 11")
    }
}
