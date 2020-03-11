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
                .font(.subheadline)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .frame(height: 30)
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
