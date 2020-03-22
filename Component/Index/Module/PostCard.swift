//
//  PostCard.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/22.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct PostCardData {
    var image: String
    var userName: String
    var content: String
    var commentNum: Int
    var contentImage: String
}

struct PostCard: View {
    var body: some View {
        VStack {
            HStack {
                CircleAvator(imgName: "me", size: 30)
                    .frame(height: 30)
                    .padding(.vertical, 5)
                Text("Echo")
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "ellipsis")
                    .scaleEffect(0.7)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            HStack {
                Text("大家怎么看新的 iPad Pro")
                    .font(.system(size: 15))
                    .bold()
                Spacer()
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
            HStack {
                Text("时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Pro 系列时隔一年半，苹果再次更新 iPad Pro 系列")
                    .foregroundColor(Color(red: 68/255, green: 68/255, blue: 68/255))
                    .font(.system(size: 12))
                    .lineSpacing(5)
                Spacer()
            }
            .padding(.horizontal)
            HStack {
                Spacer()
                Image(systemName: "bubble.right")
                    .scaleEffect(0.7)
                    .foregroundColor(Color.gray)
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
        }.background(Color.white)
            .padding(.top, 5)
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
    }
}
