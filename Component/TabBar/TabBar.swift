//
//  TabBar.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/10.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @Binding var currentView: Tab
    @Binding var showModal: Bool

    var body: some View {
        HStack {
            TabBarItem(currentView: self.$currentView, imageName: "list.bullet", paddingEdges: .leading, tab: .Tab1)
            Spacer()
            ShowModalTabBarItem(radius: 55) { self.showModal.toggle() }
            Spacer()
            TabBarItem(currentView: self.$currentView, imageName: "gear", paddingEdges: .trailing, tab: .Tab2)
        }
        .frame(minHeight: 70)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(currentView: .constant(.Tab1), showModal: .constant(false))
    }
}

enum Tab {
    case Tab1
    case Tab2
}
