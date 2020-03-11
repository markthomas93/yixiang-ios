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
        ZStack {
            BackgroundImage()
            VStack {
                SettingButton()
                HStack {
                    MineIcon()
                    Spacer()
                    EditInfo()
                }.padding()
                    .frame(height: 65)
                UserName()
                AboutMe()
                Spacer()
            }
        }
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView().previewDevice("iPhone 11")
    }
}
