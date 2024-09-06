//
//  FavoriteViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 8/06/24.
//

import Foundation

class FavoriteViewModel : ObservableObject {
    @Published var favoriteAnimals: [Animal] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchFavoriteAnimals(completion: @escaping (Bool) -> Void) {
        self.favoriteAnimals = offlineUser.favoriteAnimals
        completion(true)
    }
    
    func deleteFavoriteAnimals(animalId: Int, completion: @escaping (Bool) -> Void) {
        offlineUser.favoriteAnimals = offlineUser.favoriteAnimals.filter {
            $0.id != animalId
        }
        completion(true)
    }
}
