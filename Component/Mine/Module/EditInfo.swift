//
//  EditInfo.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/12.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct EditInfo: View {
    var body: some View {
        ZStack{
            Color.black
                .frame(width: 85, height: 25)
                .cornerRadius(40)
                .opacity(0.6)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white, lineWidth: 1)
            )
            Text("编辑资料")
                .foregroundColor(Color.white)
                .font(.system(size: 14))
        }
    }
}

struct EditInfo_Previews: PreviewProvider {
    static var previews: some View {
        EditInfo()
    }
}
