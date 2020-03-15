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
    let contactView = Text("a")
    let discoverView = Text("b")
    let meView = MineView()
    var body: some View {
        // 作为属性可以避免每次切换都重新初始化四个界面的结构以及数据
                TabView(selection: $selection) {
                    homeView
                        .tabItem {
                            Image(selection == 0 ? "compass-fill" : "compass")
                            Text("主页").foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
                    }
                    .tag(0)
                    contactView
                        .tabItem {
                            Image(selection == 1 ? "dashboard-fill" : "dashboard")
                            Text("圈子").foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
                    }
                    .tag(1)
                    discoverView
                        .tabItem {
                            Image(selection == 2 ? "message-fill" : "message")
                            Text("消息")
                            .foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
                    }
                    .tag(2)
                    meView
                        .tabItem {
                            Image(selection == 3 ? "people-fill" : "people")
                            Text("我").foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
                    }
                    .tag(3)
                }
                .edgesIgnoringSafeArea(.top)
                .accentColor(Color(red: 68/255, green: 68/255, blue: 68/255))
            }
    }



struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        RootView().previewDevice("iPhone 11")
    }
}
