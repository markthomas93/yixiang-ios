//
//  PostCard.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/22.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct PostCard: View {
    var body: some View {
        VStack {
            HStack {
                CircleAvator(imgName: "me", size: 35)
                    .frame(height: 30)
                    .padding(.vertical, 5)
                VStack(alignment: .leading) {
                    Text("Echo").font(.system(size: 14))
                    Text("昨天・发布了想法").foregroundColor(.gray)
                        .font(.system(size: 11))
                }
                Spacer()
            }
            .padding(.horizontal)
            HStack {
                Text("时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Proあああああああ 系列时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Pro 系列")
                    .foregroundColor(Color.black)
                    .font(.system(size: 13))
                    .lineLimit(nil)
                    .lineSpacing(2)
            }
            .padding(.horizontal, 15)
            HStack {
                HStack {
                    HStack {
                    Image(systemName: "flame")
                    .font(.system(size: 10, weight: .light))
                        Text("2000")
                        .font(.system(size: 10))
                    }
                    .foregroundColor(Color.gray)
                    Image(systemName: "ellipsis")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 10, weight: .light))
                        .padding(.leading, 20)
                    Image(systemName: "ellipsis")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 10, weight: .light))
                    .padding(.leading, 20)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 10, weight: .light))
            }
            .padding(.horizontal, 20)
        }.background(Color.white)
            .padding(.top, 5)
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
    }
}
