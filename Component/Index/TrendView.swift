//
//  TrendView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/19.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TrendView: View, Identifiable {
    let id = UUID()
    
    var body: some View {
        TrendCard(index: 12, title: "一二三四五六七八九十八九十按时到手的厚爱", image: "ai", watch: "122")
    }
}

struct TrendView_Previews: PreviewProvider {
    static var previews: some View {
        TrendView()
    }
}
