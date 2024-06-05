//
//  Spot.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 29/05/24.
//

import Foundation

struct Spot : Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    var picture: String
    var images: [String]
}
