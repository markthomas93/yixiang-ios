//
//  Index.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/11.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

let width = UIScreen.main.bounds.width

struct BackgroundColor: View {
    var body: some View {
        ZStack {
            Spacer()
                .background(Color(hexString: "FF7F6A"))
                .edgesIgnoringSafeArea(.all)
        }.onAppear {
            print("Home On Appear")
            let controller = UIApplication.shared.windows[0].rootViewController as? MyHostingController
            controller?.statusBarStyle = .lightContent
        }
    }
}

struct PagePicker: View {
    @State var currentPage: Int = 2
    var body: some View {
        HStack {
            Image(systemName: currentPage == 1 ? "circle.fill" : "circle")
            Image(systemName: currentPage == 2 ? "circle.fill" : "circle")
            Image(systemName: currentPage == 3 ? "circle.fill" : "circle")
            Spacer()
        }.padding(.horizontal)
            .font(.system(size: 5))
            .foregroundColor(Color.white)
            .offset(x: 10, y: -15)
    }
}

struct HeaderItem: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("主页").title()
                }
                Spacer()
                Image(systemName: "plus.circle")
                    .foregroundColor(Color.white)
                    .padding(.top, 30)
                    .font(.system(size: 24, weight: .regular))
            }
            .padding(.horizontal)
            PagePicker()
            Spacer()
        }
    }
}

let Sample4: PostCardData = PostCardData(Icon: "me", Name: "Echo", Data: "前天", Action: "分享了心情", Content: "大明什么都是自由。", Watch: "4", Coment: "313")

let Sample2: PostCardData = PostCardData(Icon: "me", Name: "Echo", Data: "昨天", Action: "发布了想法", Content: "常有人感叹中年危机来得猝不及防，但其实在它到来之前，你有无数次让它绕开你的机会，但也许正是因为你选择了安逸，才给了它可乘之机。", Watch: "4", Coment: "410")

let Sample3: PostCardData = PostCardData(Icon: "me", Name: "Echo", Data: "刚刚", Action: "分享了心情", Content: "“真正的安稳是历经世事后的淡薄，你还没有见过世界，就想隐退山林，到头来只会是井底之蛙。”", Watch: "13", Coment: "72")

struct Index: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundColor()
                HeaderItem()
                
                ScrollView {
                    VStack {
                        PostCard(PostCardData: Sample4)
                        PostCard(PostCardData: Sample2)
                        PostCard(PostCardData: Sample3)
                    }
                }
                .background(Color(hexString: "F6F6F6"))
                .cornerRadius(20, antialiased: false)
                .padding(.top, 75)
                .edgesIgnoringSafeArea(.bottom)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Index_Previews: PreviewProvider {
    static var previews: some View {
        Index().previewDevice("iPhone 11")
    }
}
