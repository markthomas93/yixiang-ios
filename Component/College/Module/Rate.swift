//
//  Rate.swift
//  yixiang-ios
//
//  Created by Ai on 2020/04/08.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct Rate: View {
    let rate: Double = 0.0657
    
    @State var input: String = ""
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text(calcResult(input: input, rate: rate))
                    .font(.system(size: 50))
            }
            .frame(width: 500, height: 300)
            .background(Color.blue)
            .edgesIgnoringSafeArea(.top)
            HStack(alignment: .center) {
                TextField("1", text: $input)
                    .keyboardType(.numberPad)
                    .lineLimit(1)
                    .frame(width: 300, height: 100)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .onAppear(perform: {
                        self.input += "100"
                    })
            }.background(Color.red)
            Spacer()
        }
    }
}

extension Double {
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
    var cleanZero : String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
    
}

extension Int {
    func addComma() -> String {
        let decimal = self % 100
        let nonDecimal = self / 100
        let formatter = NumberFormatter.init()
        formatter.numberStyle = .decimal
        if let title = formatter.string(from: NSNumber.init(value: nonDecimal)) {
            return title + String.init(format: ".%02d", decimal)
        }
        return ""
    }
}

extension String {
    func replace(_ from: String,_ to: String) -> String {
        var replacedString = self
        if let range = replacedString.range(of: from) {
            replacedString.replaceSubrange(range, with: to)
        }
        return replacedString
    }
}

func calcResult(input: String, rate: Double) -> String {
    let result: Double = atof(input) * rate
    let IntegerPart: String = String.localizedStringWithFormat("%d", Int(result))
    let resultString = result.roundTo(places: 2).cleanZero.replace(String(Int(result)), IntegerPart)
    
    return resultString
}

struct Rate_Previews: PreviewProvider {
    static var previews: some View {
        Rate()
    }
}
