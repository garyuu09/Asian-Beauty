//
//  MapView.swift
//  Asian-Beauty
//
//  Created by 松尾健司 on 2023/02/19.
//

import SwiftUI
 import MapKit
 
 struct MapView: UIViewRepresentable {
     
     let searchKey:String
     
     let mapType:MKMapType = .standard
     
     func makeUIView(context: Context) -> MKMapView {
         MKMapView()
     }
     
     func updateUIView(_ uiView: MKMapView, context:Context){
         print(searchKey)
         
         uiView.mapType = mapType
         
         let geocoder = CLGeocoder()
         
         geocoder.geocodeAddressString(
             searchKey,
             completionHandler: { (placemarks,error) in
                 if let unwrapPlacemarks = placemarks ,
                    let firstPlacemark = unwrapPlacemarks.first ,
                    let location = firstPlacemark.location {
                     let targetCoordinate = location.coordinate
                     print(targetCoordinate)
                     let pin = MKPointAnnotation()
                     pin.coordinate = targetCoordinate
                     pin.title = searchKey
                     uiView.addAnnotation(pin)
                     uiView.region = MKCoordinateRegion(
                         center:targetCoordinate,
                         latitudinalMeters: 3000000.0,
                         longitudinalMeters: 3000000.0)
                 }
             })
     }
 }
