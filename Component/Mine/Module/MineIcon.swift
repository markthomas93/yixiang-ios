//
//  MineIcon.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/11.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct MineIcon: View {
    var body: some View {
        CircleAvator(imgName: "me", size: 60)
            .overlay(
                Circle().stroke(Color.white, lineWidth: 1))
    }
}

struct MineIcon_Previews: PreviewProvider {
    static var previews: some View {
        MineIcon()
    }
}
