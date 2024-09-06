//
//  OfflineUser.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 6/09/24.
//

import Foundation

struct OfflineUser: Codable, Identifiable {
    var user: User
    
    var id: Int { return user.id }
    var name: String { return user.name }
    var email: String { return user.email }
    var created_date: String { return user.created_date }
    var updated_date: String { return user.updated_date }
    
    var favoriteAnimals: [Animal]
    var seenAnimals: [Animal]
}
