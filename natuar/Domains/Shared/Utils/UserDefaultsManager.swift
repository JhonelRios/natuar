//
//  UserDefaultsManager.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 29/05/24.
//

import Foundation

enum TokenError: Error {
    case tokenNotFound
}

class UserDefaultsManager {
    static let shared = UserDefaultsManager()
    
    func getAccessToken() -> String {
        return UserDefaults.standard.string(forKey: Constants.accessTokenKey) ?? ""
    }
    
    func clearAccessToken() {
        UserDefaults.standard.removeObject(forKey: Constants.accessTokenKey)
    }
}
