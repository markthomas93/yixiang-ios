//
//  ToolView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/08.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct ToolView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Text("1")
                }
            }
        }
    }
}

struct ToolView_Previews: PreviewProvider {
    static var previews: some View {
        ToolView().previewDevice("iPhone 11")
    }
}
