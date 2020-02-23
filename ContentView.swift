//
//  ContentView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/22.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        NavigationLink(destination: SubContentView()) {
                Text("Show Next")
                    .font(.title)
            }
        }
    }
}

struct SubContentView: View {
    var body: some View {
        Text("show next")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
