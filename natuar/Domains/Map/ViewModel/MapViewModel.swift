//
//  MapViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 29/05/24.
//

import Foundation

class MapViewModel : ObservableObject {
    @Published var spot: Spot?
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchNearestSpot(latitude: Double, longitude: Double, completion: @escaping (Bool) -> Void) {
        let nearestSpot = spotsData.min { (spot1, spot2) -> Bool in
            let distance1 = haversineDistance(lat1: latitude, lon1: longitude, lat2: spot1.latitude, lon2: spot1.longitude)
            let distance2 = haversineDistance(lat1: latitude, lon1: longitude, lat2: spot2.latitude, lon2: spot2.longitude)
            return distance1 < distance2
        }
        
        if let nearest = nearestSpot {
            self.spot = nearest
            completion(true)
        } else {
            print("Unable to find the nearest spot.")
            self.errorMessage = "Unable to find the nearest spot."
            completion(false)
        }
    }
}
