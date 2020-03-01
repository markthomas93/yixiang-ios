//
//  ContentView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/26.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

var compass = "compass"
var crown = "crown"
var dashboard = "dashboard"
var message = "message"
var user = "user"

struct TopView: View {
    @ObservedObject var viewRouter = ViewRouter()
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(self.viewRouter.currentView == compass ?  "compass-fill" : compass)
                    Text("主页")
                }.tag(1)
                .onTapGesture {
                    self.viewRouter.currentView = compass
            }
            Text("Another Tab")
                .tabItem {
                    Image(dashboard)
                    Text("小组")
                }.tag(2)
            .onTapGesture {
                    self.viewRouter.currentView = dashboard
            }
            Text("The Last Tab")
                .tabItem {
                    Image(crown)
                    Text("工具")
                }.tag(3)
            .onTapGesture {
                    self.viewRouter.currentView = crown
            }
            Text("The Last Tab")
                .tabItem {
                    Image(message)
                    Text("信息")
                }.tag(4)
            .onTapGesture {
                    self.viewRouter.currentView = message
            }
            Text("The Last Tab")
                .tabItem {
                    Image(user)
                    Text("我")
                }.tag(5)
            .onTapGesture {
                    self.viewRouter.currentView = user
            }
        }
        .font(.headline)
        .accentColor(.black)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView().previewDevice("iPhone 11")
    }
}

