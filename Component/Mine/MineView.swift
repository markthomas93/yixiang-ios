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
        GeometryReader {geometry in
        ZStack {
            BackgroundImage()
            VStack {
                SettingButton()
                    .padding(.horizontal, 20)
                    .padding(.top, geometry.size.height >= 734 ? 44 : 24)
                    .frame(height: geometry.size.height >= 734 ? 84 : 44)
                HStack {
                    MineIcon()
                    Spacer()
                    EditInfo()
                }
                .padding(.horizontal, 20)
                .frame(height: 70)
                
                UserName()
                AboutMe()
                UserData()
                    .frame(height: geometry.size.height >= 734 ? 105 : 70)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.top)
    }
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView().previewDevice("iPhone 11")
    }
}
