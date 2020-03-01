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
    @State private var selection = 0;
    var body: some View {
        TabView(selection: $selection) {
            ContentView()
                .tabItem {
                    Image(selection == 1 ? "compass-fill" : "compass")
                    Text("主页").foregroundColor(.black)
                }.tag(1)
            Text("Another Tab")
                .tabItem {
                    Image(selection == 2 ? "dashboard-fill" : "dashboard")
                    Text("小组")
                }.tag(2)
            Text("The Last Tab")
                .tabItem {
                    Image(selection == 3 ? "crown-fill" : "crown")
                    Text("工具")
                }.tag(3)
            Text("The Last Tab")
                .tabItem {
                    Image(selection == 4 ? "message-fill" : "message")
                    Text("信息")
                }.tag(4)
            Text("The Last Tab")
                .tabItem {
                    Image(selection == 5 ? "people-fill" : "people")
                    Text("我")
                }.tag(5)
        }
        .font(.headline)
        .foregroundColor(.black)
        .accentColor(.black)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView().previewDevice("iPhone 11")
    }
}

struct ContentView: View {
  @ObservedObject var webViewStore = WebViewStore()
  
  var body: some View {
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
      self.webViewStore.webView.load(URLRequest(url: URL(string: "http://18.163.178.37/")!))
    }
  }
  
  func goBack() {
    webViewStore.webView.goBack()
  }
  
  func goForward() {
    webViewStore.webView.goForward()
  }
}


