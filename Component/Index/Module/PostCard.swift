//
//  PostCard.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/22.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct PostCardData {
    var Icon: String
    var Name: String
    var Data: String
    var Action: String
    var Content: String
    var Watch: String
    var Coment: String
}

let Sample: PostCardData = PostCardData(Icon: "me", Name: "Echo", Data: "前天", Action: "分享了心情", Content: "大明什么都是自由。", Watch: "13", Coment: "313")

struct PostCard: View {
    var PostCardData: PostCardData
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CircleAvator(imgName: PostCardData.Icon, size: 35)
                    .frame(height: 30)
                    .padding(.vertical, 5)
                VStack(alignment: .leading) {
                    Text(PostCardData.Name).font(.system(size: 13))
                    Text(PostCardData.Data + "・" + PostCardData.Action).foregroundColor(.gray)
                        .font(.system(size: 11))
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
            HStack {
                Text(PostCardData.Content)
                    .foregroundColor(Color.black)
                    .font(.system(size: 15))
                    .lineLimit(nil)
                    .lineSpacing(2)
            }
            .padding(.horizontal, 15)
            HStack {
                HStack(alignment: .center) {
                    HStack(alignment: .center) {
                        Image(systemName: "flame")
                            .font(.system(size: 13))
                        Text(PostCardData.Watch)
                            .font(.system(size: 11))
                    }
                    HStack(alignment: .center) {
                        Image(systemName: "bubble.right")
                            .font(.system(size: 13))
                        Text(PostCardData.Coment)
                            .font(.system(size: 11))
                    }
                }.foregroundColor(Color(hexString: "9A9A9A"))
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(Color(hexString: "9A9A9A"))
                    .font(.system(size: 13, weight: .light))
            }
            .padding(.horizontal, 20)
            .padding(.bottom)
        }.background(Color.white)
            .cornerRadius(3)
            .padding(.horizontal, 10)
    }
}

struct debug: View {
    var body: some View {
        ZStack {
            Spacer().background(Color.gray).frame(width: 400, height: 500)
            PostCard(PostCardData: Sample)
        }
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        debug()
    }
}
