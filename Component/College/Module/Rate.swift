//
//  Rate.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/08.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct Rate: View {
    let rate: Double = 0.657
    
    @State var input: String = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("\(atof(input) * rate)")
                    .font(.system(size: 50))
            }
            .frame(width: 500, height: 300)
            .background(Color.blue)
            .edgesIgnoringSafeArea(.top)
            HStack(alignment: .center) {
                TextField("1", text: $input)
                .keyboardType(.numberPad)
                .frame(width: 100, height: 300)
                .font(.system(size: 30))
            }.background(Color.red)
            Spacer()
        }
    }
}

struct Rate_Previews: PreviewProvider {
    static var previews: some View {
        Rate()
    }
}
