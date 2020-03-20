//
//  TrendCard.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/18.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TrendCardData: Identifiable {
    var id = UUID()
    
    var index: Int
    var title: String
    var image: String
    var watch: String
}

struct TrendCard: View {
    let data: [TrendCardData]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ForEach(self.data) { data in
                    HStack(alignment: .top, spacing: 20) {
                        //Text(String(4))
                        Text(String(data.index))
                            .bold()
                            .font(.system(size: 16))
                            .padding(.vertical, 5)
                            .padding(.leading, 15)
                            .foregroundColor(Color.gray)
                        VStack(alignment: .leading) {
                            //Text("如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？")
                            Text(data.title)
                                .font(.system(size: 15, weight: .bold))
                                .lineSpacing(3)
                                .padding(.vertical, 5)
                            
                            Text(data.watch + "热度")
                                .font(.footnote)
                                .padding(.vertical, 5)
                                .foregroundColor(Color.gray)
                        }
                        Image(data.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 110, height: 80)
                            .cornerRadius(5)
                            .padding(.vertical, 5)
                            .padding(.trailing, 15)
                    }
                    .background(Color.white)
                    .frame(width: geometry.size.width)
                }
            }
        }
    }
}

struct TrendCard_Previews: PreviewProvider {
    static var previews: some View {
        TrendCard(data: [TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122")]).previewDevice("iPhone 11")
        
    }
}
