//
//  MineView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/08.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct MineView: View {
    var body: some View {
        VStack {
            VStack {
                Color(red: 221.0 / 255.0, green: 112.0 / 255.0, blue: 110.0 / 255)
            }
            .frame(height: 50)
            .edgesIgnoringSafeArea(.top)
            VStack {
                HStack {
                    Spacer()
                    Image("setting_icon")
                        .padding(.horizontal, 15)
                        .padding(.vertical, 15)
                }
                Spacer()
            }
            .frame(height: 100)
            .background(Color(red: 221.0 / 255.0, green: 112.0 / 255.0, blue: 110.0 / 255)
            )
            .padding(.top, -70)

            VStack {
                HStack(alignment: .center) {
                    HeaderCard(imgName: "me", userName: "Echo")
                    .padding(.top, 10)
                }
                .frame(height: 100)
                .padding(.vertical, 5)

                Group {
                    SettingCell(imageName: "setting_quanzi", title: "我的圈子")
                    SettingCell(imageName: "setting_shoucang", title: "我的收藏")
                    SettingCell(imageName: "setting_feedback", title: "帮助与反馈")
                }
                .background(Color.white)
                .padding(.bottom, -7)
                Spacer()
            }
            .padding(.top, -60)
        }
        .background(Color(red: 245.0 / 255.0, green: 245.0 / 255.0, blue: 245.0 / 255))
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView().previewDevice("iPhone X")
    }
}
