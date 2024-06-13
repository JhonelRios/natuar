//
//  User.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 12/06/24.
//

import Foundation

struct User: Codable, Identifiable {
    var id: Int
    var name: String
    var email: String
    var created_date: String
    var updated_date: String
}
