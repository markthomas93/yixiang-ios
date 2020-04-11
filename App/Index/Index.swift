//
//  Index.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/11.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        ZStack {
            Spacer()
                .background(Color(hexString: "FF7F6A"))
                .edgesIgnoringSafeArea(.all)
            Spacer()
                .background(Color.white)
                .cornerRadius(30, antialiased: false)
                .padding(.top, 44)
                .edgesIgnoringSafeArea(.bottom)
        }.onAppear {
          print("Home On Appear")
          let controller = UIApplication.shared.windows[0].rootViewController as? MyHostingController
          controller?.statusBarStyle = .lightContent
        }
    }
}

struct Index: View {
    var body: some View {
        ZStack {
            BackgroundColor()
        }
    }
}

struct Index_Previews: PreviewProvider {
    static var previews: some View {
        Index().previewDevice("iPhone 11")
    }
}
