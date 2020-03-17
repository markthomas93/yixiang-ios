//
//  UserName.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/12.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct UserName: View {
    var body: some View {
        HStack {
            Text("主人好好吃啊")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
            Condition()
        }.padding()
            .frame(height: 30)
    }
}

struct UserName_Previews: PreviewProvider {
    static var previews: some View {
        UserName()
    }
}
