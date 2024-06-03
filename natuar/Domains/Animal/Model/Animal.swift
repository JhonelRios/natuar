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
    var description: String
    var in_danger: Bool
    var images: [String]
    var spotId: Int
}
