//
//  TabBarView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/28.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(red: 254.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0)
    }
    
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image("景点")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        .frame(width: 32, height: 32)
                        .foregroundColor(Color("darkGreen"))
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
            Text("The Last Tab")
                           .tabItem {
                               Image(systemName: "4.square.fill")
                               Text("Third")
                           }
            
        }
        .font(.headline)
        .foregroundColor(.red)
    }
}

struct TabBar: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
