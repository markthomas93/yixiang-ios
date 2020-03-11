//
//  View++.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/10.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

import SwiftUI

extension View {
    
    func navigationLink<Destination: View>(destination: Destination) -> some View {
        background(
            NavigationLink(destination: destination) {
                EmptyView() // 不需要实际的 Label 视图，EmtpyView 即可
            }
            .frame(width: 0, height: 0) // 避免占用空间
            .opacity(0) // 不可见
        )
    }
    
}

