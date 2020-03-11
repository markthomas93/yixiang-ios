//
//  SettingButton.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/11.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct SettingButton: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "gear")
            .resizable()
            .frame(width: 24, height: 24)
        }
        .padding()
    }
}

struct SettingButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingButton()
    }
}
