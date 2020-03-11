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
                Color(.systemPink).frame(height: geometry.size.height * 0.382)
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
