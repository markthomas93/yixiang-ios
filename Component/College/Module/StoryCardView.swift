//
//  StoryCardView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/06.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct StroyView: View {
    var body: some View {
        StoryCardView()
    }
}

struct StoryCardView: View {
    let TinyTitleLightColor = Color(colorset: [255, 255, 255, 0.5])
    let TinyTitleDarkColor = Color(colorset: [68, 68, 68, 0.9])
    let TitleLightColor = Color(colorset: [255, 255, 255, 1])
    let TitleDarkColor = Color(colorset: [68, 68, 68, 1])
    @State var isShow: Bool = false
    @State var isOnTap: Bool = false
    var body: some View {
        NavigationView {
        ZStack {
            ScrollView {
                VStack {
                Text("　向こうの山に積水しているように見えるが、実は、そうではないということを誰も信じていなかった。予感めいたものなど、何ひとつなかった。")
                    Text("　白く凍った海の中に沈んでいくくじらを見たことがあるだろうか。少女の頃なら誰だって、恋人の死を想像してうっとりすることがある。その地では、絶望は白い色をしている。最初はそんなこと、誰も信じていなかった。少しも信じていなかった。噂はいつだってそういうものだ。")
                        .padding(.top, 10)
                    Text("　眠りの底から生還してサラリと目を開いたときに、自分というものが空や海ではないことを、まずは不思議に思う。背中が痒いと思ったら、夜が少しばかり食い込んでいるのだった。人は不本意な必然をしばしば運命と呼ぶ。")
                    .padding(.top, 10)
                }.lineSpacing(5)
            }.frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 225, idealHeight: isShow ? .infinity : 450, maxHeight: isShow ? .infinity : 450)
            .padding(.horizontal, isShow ? 20 : 25)
                .position(x: screen.width / 2, y: isShow ? 520 : 225)
            ZStack {
                Image("yuki")
                    .resizable()
                VStack {
                    HStack {
                        Text("小故事").foregroundColor(TinyTitleDarkColor)
                            .padding(.top, isShow ? 35 : 0)
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
            .cornerRadius(isShow ? 0 : 15, antialiased: true)
            .padding(.horizontal, isShow ? 0 : 20)
            .onTapGesture {
                withAnimation(.spring()) {
                    self.isShow.toggle()
                }
            }
            .edgesIgnoringSafeArea(.all)
            .position(x: screen.width / 2, y: isShow ? 40 : 220)
            .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 225, idealHeight: 450 , maxHeight: 450)
        }
        .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 225, idealHeight: 450 , maxHeight: 450)
    .statusBar(hidden: isShow)
    }
    }
}

struct StoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StroyView().previewDevice("iPhone 11")
    }
}
