//
//  CircleImage.swift
//  Landmarks
//
//  Created by jxrt on 2020/6/10.
//  Copyright © 2020 atonementcoder. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // 边框
            .shadow(radius: 10)// 阴影
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
