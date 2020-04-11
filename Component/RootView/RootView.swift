//
//  TabBar.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/15.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State private var selection = 0
    let homeView = IndexPagging()
    let contactView = Index()
    let discoverView = Rate()
    let meView = MineView()
    var body: some View {
        
        UIKitTabView([
            UIKitTabView.Tab(view: homeView, title: "主页", image: "compass", selectedImage: "compass-fill"),
            UIKitTabView.Tab(view: contactView, title: "圈子", image: "dashboard", selectedImage: "dashboard-fill"),
            UIKitTabView.Tab(view: discoverView, title: "消息", image: "message", selectedImage: "message-fill"),
            UIKitTabView.Tab(view: meView, title: "我", image: "people", selectedImage: "people-fill")
        ])
            .foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
            .accentColor(Color(red: 68/255, green: 68/255, blue: 68/255))
    }
}



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        RootView().previewDevice("iPhone 11")
    }
}
