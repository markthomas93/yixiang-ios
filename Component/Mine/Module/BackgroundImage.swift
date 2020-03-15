//
//  BackgroundImage.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/11.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                ZStack {
                    ImageStore.shared.image(name: "me", size: 80)
                        .resizable()
                        .blur(radius: 20)
                        .frame(width: geometry.size.width, height: geometry.size.width)
                    Color.black.opacity(0.5)
                }.frame(width: geometry.size.width, height: geometry.size.height * 0.382 + (geometry.size.height >= 734 ? 44 : 34))
                .clipped()
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct BackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImage()
    }
}
