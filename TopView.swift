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
    @ObservedObject var webViewStore = WebViewStore()
    
    var a: some View {
      NavigationView {
        WebView(webView: webViewStore.webView)
          .navigationBarTitle(Text(verbatim: webViewStore.webView.title ?? ""), displayMode: .inline)
          .navigationBarItems(trailing: HStack {
            Button(action: goBack) {
              Image(systemName: "chevron.left")
                .imageScale(.large)
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            }.disabled(!webViewStore.webView.canGoBack)
            Button(action: goForward) {
              Image(systemName: "chevron.right")
                .imageScale(.large)
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            }.disabled(!webViewStore.webView.canGoForward)
          })
      }.onAppear {
        self.webViewStore.webView.load(URLRequest(url: URL(string: "https://yixiang.app")!))
      }
    }
    
    func goBack() {
      webViewStore.webView.goBack()
    }
    
    func goForward() {
      webViewStore.webView.goForward()
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                if self.viewRouter.currentView == "home" {
                    self.a
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
                    Image("message")
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

