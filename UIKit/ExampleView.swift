//
//  ExampleView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/16.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct ExampleView: View {
    @State var text: String = ""
    
    var body: some View {
        UIKitTabView([
            UIKitTabView.Tab(view: NavView(), title: "First", image: ""),
            UIKitTabView.Tab(view: Text("Second View"), title: "Second", image: "")
        ])
    }
}

struct NavView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("This page stays when you switch back and forth between tabs (as expected on iOS)")) {
                    Text("Go to detail")
                }
            }
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
