//
//  TrendCard.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/18.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TrendCard: View, Identifiable {
    var id = UUID()
    
    var index: Int
    var title: String
    var image: String
    var watch: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(1..<self.index) { item in
                        HStack(alignment: .top, spacing: 0) {
                            //Text(String(4))
                            HStack(alignment: .center) {
                                Text(String(item))
                                    .bold()
                                    .font(.system(size: 16))
                                    .foregroundColor(Color.gray)
                                    .padding(.vertical, 8)
                            }.frame(width: geometry.size.width * 0.12)
                                .background(Color.white)
                            
                            HStack(alignment: .center) {
                                VStack(alignment: .leading) {
                                    
                                    Text(self.title)
                                        .font(.system(size: 15, weight: .bold))
                                        .lineSpacing(3)
                                        .padding(.top, 5)
                                        .frame(height: self.title.count > 14 ? 50 : 20)
                                
                                    Text(self.watch + "热度")
                                        .font(.footnote)
                                        .foregroundColor(Color.gray)
                                    .padding(.top, 5)
                                    Spacer()
                                }
                                .frame(height: 70)
                                Spacer()
                            }
                            .frame(width: geometry.size.width * 0.56, height: 80)
                            .background(Color.white)
                            HStack(alignment: .top) {
                                Image(self.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: geometry.size.width * 0.326 - 40, height: 65)
                                    .cornerRadius(5)
                            }.frame(width: geometry.size.width * 0.326, height: 80)
                        }
                        .frame(width: geometry.size.width, height: 80)
                        .background(Color.white)
                    }
                }
            }.padding(.top, 10)
        }
    }
}

struct TrendCard_Previews: PreviewProvider {
    static var previews: some View {
        TrendCard(index: 2, title: "一二三四五六七八九十一二三四", image: "ai", watch: "122").previewDevice("iPhone 11")
        
    }
}
