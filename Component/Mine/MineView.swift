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
        
        GeometryReader { geometry in
            VStack{
                ZStack(alignment: .bottom) {
                    BackgroundImage()
                    VStack {
                        HStack {
                            Spacer()
                            SettingButton().padding(.horizontal, 20)
                        }
                        HStack {
                            MineIcon()
                            Spacer()
                            EditInfo()
                        }
                        .padding(.horizontal, 20)
                        
                        HStack {
                            UserName()
                            Spacer()
                        }
                        HStack {
                            AboutMe()
                            Spacer()
                        }
                        UserData()
                    }
                }.frame(height: geometry.size.height * 0.38 + CGFloat(20))
                
                Spacer().frame(height: geometry.size.height * 0.62 - CGFloat(20))
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView().previewDevice("iPhone 11")
    }
}
