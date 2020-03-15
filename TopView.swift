//
//  ContentView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/02/26.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI
import WebKit


struct TopView: View {
    @State private var showModal: Bool = false
    
    var body: some View {
       ScrollPagingDemo()
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView().previewDevice("iPhone 11")
    }
}
