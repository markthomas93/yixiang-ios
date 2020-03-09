//
//  ShowModalTabBarItem.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/10.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

public struct ShowModalTabBarItem: View {
    let radius: CGFloat
    let action: () -> Void

    public init(radius: CGFloat, action: @escaping () -> Void) {
        self.radius = radius
        self.action = action
    }
    
    public var body: some View {
        VStack(spacing:0) {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: radius, height: radius, alignment: .center)
                .foregroundColor(Color(.systemBlue))
                .background(Color(.white))
                .cornerRadius(radius/2)
                .overlay(RoundedRectangle(cornerRadius: radius/2).stroke(Color(.blue), lineWidth: 2))

        }
        .frame(width: radius, height: radius)
        .onTapGesture(perform: action)
    }
}

struct ShowModalTabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        ShowModalTabBarItem(radius: 55) { }
    }
}
