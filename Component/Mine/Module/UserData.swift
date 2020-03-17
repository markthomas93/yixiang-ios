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
                Text("10")
                    .font(.system(size: 15, weight: .bold))
                Text("获赞").offset(y: 5)
                .font(.system(size: 13))
            }.frame(width: 70, height: 40)
            Spacer()
            VStack(alignment: .center) {
                Text("9").font(.system(size: 15, weight: .bold))
                Text("关注").offset(y: 5)
                .font(.system(size: 13))
            }.frame(width: 70, height: 40)
            Spacer()
            VStack(alignment: .center) {
                Text("0").font(.system(size: 15, weight: .bold))
                Text("知音").offset(y: 5)
                .font(.system(size: 13))
            }.frame(width: 70, height: 40)
            Spacer()
            VStack(alignment: .center) {
                Text("32").font(.system(size: 15, weight: .bold))
                Text("知识").offset(y: 5)

                .font(.system(size: 13))
            }.frame(width: 70, height: 40)
        }
        .padding()
        .foregroundColor(.white)
        .frame(height: 70)
    }
}

struct UserData_Previews: PreviewProvider {
    static var previews: some View {
        UserData()
    }
}
