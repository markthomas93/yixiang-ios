//
//  CurrentScreen.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/10.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct CurrentScreen: View {
    @Binding var currentView: Tab

    var body: some View {
        VStack {
            if self.currentView == .Tab1 {
                NavigationView{
                    Text("1")
                }
            } else {
                MineView()
            }
        }
    }
}

struct CurrentScreen_Previews: PreviewProvider {
    static var previews: some View {
        CurrentScreen(currentView: .constant(.Tab1))
    }
}
