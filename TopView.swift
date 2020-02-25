//
//  ContentView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/26.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TopView: View {
    @ObservedObject var viewRouter = ViewRouter()
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                if self.viewRouter.currentView == "home" {
                    Text("Home")
                } else if self.viewRouter.currentView == "experiment" {
                    Text("experiment")
                } else if self.viewRouter.currentView == "message" {
                    Text("message")
                } else if self.viewRouter.currentView == "user" {
                    Text("user")
                }
                Spacer()
                HStack {
                    Spacer()
                    Image("home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                        .frame(width: geometry.size.width/6, height: 82)
                        .onTapGesture {
                            self.viewRouter.currentView = "home"
                        }
                    Spacer()
                    Image("experiment")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: geometry.size.width/6, height: 82)
                    .onTapGesture {
                        self.viewRouter.currentView = "experiment"
                    }
                    Spacer()
                    Image("message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: geometry.size.width/6, height: 82)
                    .onTapGesture {
                        self.viewRouter.currentView = "message"
                    }
                    Spacer()
                    Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: geometry.size.width/6, height: 82)
                    .onTapGesture {
                        self.viewRouter.currentView = "user"
                    }
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height/10)
                .background(Color.white.shadow(radius: 2))
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}

