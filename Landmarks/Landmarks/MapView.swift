//
//  MapView.swift
//  Landmarks
//
//  Created by jxrt on 2020/6/10.
//  Copyright © 2020 atonementcoder. All rights reserved.
//

import SwiftUI
import MapKit

// UIViewRepresentable 将UIKit组件封装成SwiftUI View
// 必须实现两个方法makeUIView 和 updateUIView
struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
    
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        // 经纬度
//        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        
        // 坐标跨度？
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868))
    }
}
