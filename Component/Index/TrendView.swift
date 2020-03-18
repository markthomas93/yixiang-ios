//
//  TrendView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/19.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct TrendView: View, Identifiable {
    let id = UUID()
    
    var body: some View {
        ScrollView {
        TrendCard(data: [TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122"),
        TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122"),
        TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122"),
        TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122"),
        TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122"),
        TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122"),
        TrendCardData(index: 1, title: "如何看待马云向美国捐赠 50 万份测试剂盒和 100 万只口罩的行为？", image: "ai", watch: "122")])
    }
    }
}

struct TrendView_Previews: PreviewProvider {
    static var previews: some View {
        TrendView()
    }
}
