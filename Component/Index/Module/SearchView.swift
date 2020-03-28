//
//  SearchView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/25.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State private var name = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .padding(.horizontal, 20)
                        TextField("搜索易乡内容", text: self.$name)
                            .textFieldStyle(PlainTextFieldStyle())
                        Spacer()
                    }.foregroundColor(Color(red: 159/255, green: 159/255, blue: 159/255))
                        .frame(width: geometry.size.width * 0.618, height: 35)
                        .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                        .cornerRadius(5)
                    Spacer()
                    PushView(destination: IndexPagging()) {
                        Text("取消")
                    }
                }.padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
