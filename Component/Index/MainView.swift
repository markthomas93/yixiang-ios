//
//  MainView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/22.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
            VStack {
                List {
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                    PostCard()
                }
            }
        
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
