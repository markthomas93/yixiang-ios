//
//  StoryCardView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/06.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct StoryCardView: View {
    let TinyTitleLightColor = Color(colorset: [255, 255, 255, 0.5])
    let TinyTitleDarkColor = Color(colorset: [68, 68, 68, 0.9])
    let TitleLightColor = Color(colorset: [255, 255, 255, 1])
    let TitleDarkColor = Color(colorset: [68, 68, 68, 1])
    @State var isShow: Bool = false
    var body: some View {
        ZStack {
            Image("yuki")
                .resizable()
            VStack {
                HStack {
                    Text("小故事").foregroundColor(TinyTitleDarkColor)
                    Spacer()
                }.padding(.top)
                 .padding(.leading)
                HStack {
                    VStack(alignment: .leading) {
                        Text("流传近百年的建筑").foregroundColor(TitleDarkColor)
                            .font(.system(.title))
                            .fontWeight(.bold)
                        Text("藏在雪景中").foregroundColor(TitleDarkColor)
                            .font(.system(.title))
                            .fontWeight(.bold)
                    }
                    Spacer()
                }.padding(.horizontal)
                    .padding(.top, 5)
                Spacer()
            }
        }
        .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 225, idealHeight: 450 , maxHeight: 450)
            .cornerRadius(15, antialiased: true)
        .padding(.horizontal, isShow ? 0 : 20)
        .onTapGesture {
            withAnimation(.spring()) {
                self.isShow.toggle()
            }
        }
    
    }
}

struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoryCardView().previewDevice("iPhone 11")
    }
}
