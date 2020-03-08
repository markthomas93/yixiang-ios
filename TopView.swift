//
//  ContentView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/26.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI
import WebKit


struct TopView: View {
    @State private var selection = 1;
    var body: some View {
        TabView(selection: $selection) {
            Text("1")
                .tabItem {
                    Image(selection == 1 ? "compass-fill" : "compass")
                    Text("主页").foregroundColor(.black)
                }.tag(1)
            Text("2")
                .tabItem {
                    Image(selection == 2 ? "dashboard-fill" : "dashboard")
                    Text("小组")
                }.tag(2)
            Text("3")
                .tabItem {
                    Image(selection == 3 ? "crown-fill" : "crown")
                    Text("工具")
                }.tag(3)
            Text("4")
                .tabItem {
                    Image(selection == 4 ? "message-fill" : "message")
                    Text("信息")
                }.tag(4)
            MineView()
                .tabItem {
                    Image(selection == 5 ? "people-fill" : "people")
                    Text("我")
                }.tag(5)
        }
        .font(.headline)
        .foregroundColor(.black)
        .accentColor(.black)
        .edgesIgnoringSafeArea(.top)
        }
    }

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView().previewDevice("iPhone 11")
    }
}
