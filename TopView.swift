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
                Text(self.viewRouter.currentView)
                HStack {
                    Spacer()
                    VStack{
                    Image("home")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width/15, height: geometry.size.width/15)
                    Text("主页")
                        .font(.system(size: 11))
                        .bold()
                    }
                    .frame(width: geometry.size.width/6, height: 82)
                    .onTapGesture {
                        self.viewRouter.currentView = "home"
                    }
                    Spacer()
                    VStack{
                    Image("experiment")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width/15, height: geometry.size.width/15)
                    Text("工具")
                        .font(.system(size: 11))
                        .bold()
                    }
                    .frame(width: geometry.size.width/6, height: 82)
                    .onTapGesture {
                        self.viewRouter.currentView = "experiment"
                    }
                    Spacer()
                    VStack{
                    Image("message-1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width/15, height: geometry.size.width/15)
                    Text("信息")
                        .font(.system(size: 11))
                        .bold()
                    }
                    .frame(width: geometry.size.width/6, height: 82)
                    .onTapGesture {
                        self.viewRouter.currentView = "message"
                    }
                    Spacer()
                    VStack{
                    Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width/15, height: geometry.size.width/15)
                    Text("用户")
                        .font(.system(size: 11))
                        .bold()
                    }
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

