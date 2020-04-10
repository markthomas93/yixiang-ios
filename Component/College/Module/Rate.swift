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
            HStack {
                TextField("1", text: $input)
                .keyboardType(.numberPad)
            }
            HStack {
                Text("".appendingFormat("%.2f", "\(atof(input) * rate)"))
            }
        }
    }
}

struct Rate_Previews: PreviewProvider {
    static var previews: some View {
        Rate()
    }
}
