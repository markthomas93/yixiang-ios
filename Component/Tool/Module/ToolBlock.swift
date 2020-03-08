//
//  ToolBlock.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/08.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct ToolBlock: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Text("日程")
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct ToolBlock_Previews: PreviewProvider {
    static var previews: some View {
        ToolBlock()
    }
}
