//
//  DestinationViewModel.swift
//  FindReserve
//
//  Created by a on 11/6/25.
//

import Combine
import SwiftUI
import MapKit

class DestinationViewModel: ObservableObject {    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5666791, longitude: 126.9782914), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @Published var searchText: String = ""
    

}
