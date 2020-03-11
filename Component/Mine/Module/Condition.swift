//
//  UserInfo.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/12.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct Condition: View {
    var body: some View {
        Color(.systemPink)
            .clipShape(Circle())
            .frame(width: 20, height: 20)
            .overlay(Image(systemName: "suit.heart.fill")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 10, height: 10))
    }
}

struct Condition_Previews: PreviewProvider {
    static var previews: some View {
        Condition()
    }
}
