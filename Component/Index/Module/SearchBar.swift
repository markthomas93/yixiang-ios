//
//  SearchBar.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/15.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        ZStack {
            Color(red: 240/255, green: 240/255, blue: 240/255)
                .frame(width: 300 * 0.67)
                .cornerRadius(5)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                Text("搜索")
                    .foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                
            }
            }
        .frame(height: 40)
    }
}

struct TestViewText: View {
    var body: some View {
        Text("a")
            .navigationBarTitle("聊天", displayMode: .inline)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar().previewDevice("iPhone 11")
    }
}
