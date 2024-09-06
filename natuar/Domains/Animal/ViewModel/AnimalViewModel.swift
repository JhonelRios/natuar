//
//  AnimalViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 5/06/24.
//

import Foundation

struct isFavoriteResponse: Decodable {
    var isFavorite: Bool
}

class AnimalViewModel : ObservableObject {
    @Published var animals: [Animal] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    @Published var isFavorite = false
    
    func fetchAnimals(completion: @escaping (Bool) -> Void) {
        self.animals = animalsData
        completion(true)
    }
    
    func fetchIsFavorite(animalId: Int, completion: @escaping (Bool) -> Void) {
        self.isFavorite = offlineUser.favoriteAnimals.contains { animal in
            animal.id == animalId
        }
        completion(true)
    }
    
    func markAsFavorite(animalId: Int, completion: @escaping (Bool) -> Void) {
        guard let selectedAnimal = animalsData.first(where: { animal in animal.id == animalId }) else {
            print("No animal with the ID: \(animalId)")
            return
        }
        
        offlineUser.favoriteAnimals.append(selectedAnimal)
        self.isFavorite = true
        completion(true)
    }
    
    func deleteFavoriteAnimals(animalId: Int, completion: @escaping (Bool) -> Void) {
        offlineUser.favoriteAnimals = offlineUser.favoriteAnimals.filter {
            $0.id != animalId
        }
        self.isFavorite = false
        completion(true)
    }
    
    func markAsSeen(animalId: Int) {
        guard let selectedAnimal = animalsData.first(where: { animal in animal.id == animalId }) else {
            print("No animal with the ID: \(animalId)")
            return
        }
        
        offlineUser.seenAnimals.append(selectedAnimal)
    }
}
