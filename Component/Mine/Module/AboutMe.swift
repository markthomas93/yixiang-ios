//
//  AboutMe.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/12.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        HStack {
            Text("いろはにほへと")
                .font(.system(size: 15))
                .foregroundColor(.white)
        }
        .padding(.horizontal)
        .frame(height: 20)
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
