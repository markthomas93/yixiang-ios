//
//  IndexPagging.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/15.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct IndexPagging: View {
    var body: some View {
        VStack {
            SearchBar()
            .frame(height: 40)
            ScrollPaging(pages: [
                   TestView(),
                   TestView(),
                   TestView()
                   ])
            Spacer()
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
