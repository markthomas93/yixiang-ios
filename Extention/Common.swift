//
//  Modify.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/11.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

extension Text {
    func title() -> some View {
        self.foregroundColor(Color.white).font(.title).fontWeight(.bold).padding(.top, 30)
    }
}
