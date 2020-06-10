//
//  LandmarkList.swift
//  Landmarks
//
//  Created by jxrt on 2020/6/10.
//  Copyright © 2020 atonementcoder. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
//        .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
        ForEach(["iPhone 8", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
            .previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
    }
}
