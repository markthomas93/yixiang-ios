//
//  UserData.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/12.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct UserData: View {
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text("0")
                    .font(.system(size: 17, weight: .bold))
                Spacer()
                Text("获赞")
            }
            Spacer()
            VStack(alignment: .center) {
                Text("0").font(.system(size: 17, weight: .bold))
                Spacer()
                Text("关注")
            }
            Spacer()
            VStack(alignment: .center) {
                Text("0").font(.system(size: 17, weight: .bold))
                Spacer()
                Text("知音")
            }
            Spacer()
            VStack(alignment: .center) {
                Text("0").font(.system(size: 17, weight: .bold))
                Spacer()
                Text("知识")
            }
        }
        .padding(.horizontal, 40)
        .foregroundColor(.white)
        .font(.system(size: 13))
        .frame(height: 30)
        .offset(y: 30)
    }
}

struct UserData_Previews: PreviewProvider {
    static var previews: some View {
        UserData()
    }
}
