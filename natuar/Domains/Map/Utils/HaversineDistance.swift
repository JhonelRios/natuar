//
//  HaversineDistance.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 6/09/24.
//

import Foundation

// Helper function to calculate Haversine distance between two coordinates
func haversineDistance(lat1: Double, lon1: Double, lat2: Double, lon2: Double) -> Double {
    let radians = { (degrees: Double) -> Double in degrees * .pi / 180 }
    let dLat = radians(lat2 - lat1)
    let dLon = radians(lon2 - lon1)
    let a = sin(dLat / 2) * sin(dLat / 2) +
            cos(radians(lat1)) * cos(radians(lat2)) *
            sin(dLon / 2) * sin(dLon / 2)
    let c = 2 * atan2(sqrt(a), sqrt(1 - a))
    let earthRadius = 6371.0 // Earth radius in kilometers
    return earthRadius * c
}
