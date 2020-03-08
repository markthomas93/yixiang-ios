//
//  MineView.swift
//  yixiang-ios
//
//  Created by Ai on 2020/03/08.
//  Copyright © 2020 Ai. All rights reserved.
//

import SwiftUI

struct MineView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(destination: UserView()) {
                        HStack {
                            Image("icon")
                                .resizable()
                                .renderingMode(.original)
                                .clipShape(Circle())
                                .frame(width: 54, height: 54)
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            VStack(alignment: .leading) {
                                Spacer()
                                Text("Echo")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .bold()
                                Spacer()
                                Text("いろはにほへと")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14))
                                Spacer()
                            }
                            .offset(x: 5)
                            Spacer()
                            Image("more")
                            .renderingMode(.original)
                        }
                        .padding()
                        .frame(height: 72)
                    }
                    Spacer()
                }
            }
            .navigationBarTitle(Text("我的"))
        }
    }
}

struct MineView_Previews: PreviewProvider {
    static var previews: some View {
        MineView().previewDevice("iPhone X")
    }
}
