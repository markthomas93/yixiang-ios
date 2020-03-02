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
        .edgesIgnoringSafeArea(.top)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopView().previewDevice("iPhone 11")
    }
}

struct ContentView: View {
  @ObservedObject var webViewStore = WebViewStore()
  @State var items = [Item]()
  var body: some View {
    ZStack{
        NavigationView {
            List(items) { item in
                Text(item.name)
            }
            .navigationBarTitle(Text("易乡"), displayMode: .inline)
            .navigationBarItems(trailing:
            HStack {
                Button(action: {self.addTask()}) {
                Image("")
                }
            Button(action: {self.addTask()}) {
                Image("")
                }
            })
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = UIColor.init(red: 250.0, green: 250.0, blue: 250.0, alpha: 1)
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
            })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
  }
  
  func goBack() {
    webViewStore.webView.goBack()
  }
  
  func goForward() {
    webViewStore.webView.goForward()
  }
    
  struct Item: Identifiable {
    var id: Int
    var name: String
  }
    struct NavigationConfigurator: UIViewControllerRepresentable {
        var configure: (UINavigationController) -> Void = { _ in }

        func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
            UIViewController()
        }
        func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
            if let nc = uiViewController.navigationController {
                self.configure(nc)
            }
        }

    }
    func addTask() {
        let item = Item(id: items.count+1, name: "Sample Task")
        items.append(item)
    }

    func removeTask() {
        items.removeLast()
    }
}


