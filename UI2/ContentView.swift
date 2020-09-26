//
//  ContentView.swift
//  UI2
//
//  Created by にゃんにゃん丸 on 2020/09/26.
//

import SwiftUI
import MapKit


    struct mapview : UIViewRepresentable {
        func makeUIView(context: Context) -> MKMapView {
            MKMapView(frame: .zero)
        }
        
        func updateUIView(_ uiView: MKMapView, context: Context) {
            let cordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
            let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
            let region = MKCoordinateRegion(center: cordinate, span: span)
            uiView.setRegion(region, animated: true)
            
        }
        
        
        
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        mapview()
    }
}
