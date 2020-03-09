//
//  HeaderCard.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/09.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct HeaderCard: View {
    var body: some View {
        HStack(alignment: .center) {
            CircleAvator(imgName: "meicon")
                .padding(.horizontal, 18)
            VStack(alignment: .leading) {
                HStack {
                    Text("瓦恁")
                        .font(Font.system(size: 18))
                    Image("righ_arrow")
                        .frame(width: 21, height: 36, alignment: .leading)
                        .scaledToFill()
                }
                HStack {
                    Image("touxiang")
                    Text("99999人关注")
                        .font(Font.system(size: 13))
                }
                .offset(x: 0, y: -8)
            }
            .padding(.top, 10)
            .padding(.horizontal, -10)
            Spacer()
        }
        .frame(height: 100)
        .background(Color.white
            .cornerRadius(10, antialiased: true))
        // .shadow(radius: 5)
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
    }
}

struct HeaderCard_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCard()
    }
}
