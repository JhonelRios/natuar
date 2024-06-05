//
//  Animal.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 29/05/24.
//

import Foundation

struct Animal : Codable, Identifiable {
    var id: Int
    var name: String
    var scientific_name: String
    var description: String
    var weigth: Int
    var height: Int
    var average_age: Int
    var habitat: String
    var diet: String
    var gestation: String
    var in_danger: Bool
    var images: [String]
    var model_name: String
    var latitude: Double
    var longitude: Double
    var spotId: Int
}
