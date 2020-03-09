//
//  CircleAvator.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/09.
//  Copyright © 2020 Ai. All rights reserved.
//


import SwiftUI

struct CircleAvator: View {
    var imgName: String
    var body: some View {
        VStack {
            ImageStore.shared.image(name: imgName, size: 60)
                .clipShape(Circle())
        }
    }
}

struct CircleAvator_Preview: PreviewProvider {
    static var previews: some View {
        CircleAvator(imgName: "test")
    }
}
