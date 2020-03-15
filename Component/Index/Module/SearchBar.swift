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
        GeometryReader { geometry in
            ZStack {
                Color(red: 240/255, green: 240/255, blue: 240/255)
                    .frame(width: geometry.size.width * 0.618)
                    .cornerRadius(5)
                NavigationLink(destination: Text("a")){
                    HStack(alignment: .center) {
                        Text("              ")
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                        Text("搜索")
                            .foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                        Text("              ")
                    }
                }
                .frame(width: geometry.size.width * 0.618, height: 35)
            }
            .frame(height: 32)
        }
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

//
//HStack {
//    Spacer()
//    Image(systemName: "paperplane")
//        .foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
//    SearchBar()
//    Image(systemName: "star")
//    .foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
//    Spacer()
//}.frame(height: 44)
