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
        let animalsUrl = "\(Constants.backendURL)/animals"
        guard let url = URL(string: animalsUrl) else {
            errorMessage = "Invalid URL"
            return
        }
        
        let accessToken = UserDefaultsManager().getAccessToken()
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization") // Add your token
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        isLoading = true
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                
                if let error = error {
                    self.errorMessage = "Animals request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    self.errorMessage = "Error: Non-200 HTTP status code"
                    completion(false)
                    return
                }
                
                if let animalsResponse = try? JSONDecoder().decode([Animal].self, from: data) {
                    self.animals = animalsResponse
                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode animals response"
                    completion(false)
                }
            }
        }.resume()
    }
    
    func fetchIsFavorite(animalId: Int, completion: @escaping (Bool) -> Void) {
        let isFavoriteUrl = "\(Constants.backendURL)/animals/\(animalId)/favorite"
        guard let url = URL(string: isFavoriteUrl) else {
            errorMessage = "Invalid URL"
            return
        }
        
        let accessToken = UserDefaultsManager().getAccessToken()
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization") // Add your token
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        isLoading = true
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                
                if let error = error {
                    self.errorMessage = "Is Favorite request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    self.errorMessage = "Error: Non-200 HTTP status code"
                    completion(false)
                    return
                }
                
                if let isFavoriteResponse = try? JSONDecoder().decode(isFavoriteResponse.self, from: data) {
                    self.isFavorite = isFavoriteResponse.isFavorite
                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode is favorite response"
                    completion(false)
                }
            }
        }.resume()
    }
    
    func markAsFavorite(animalId: Int, completion: @escaping (Bool) -> Void) {
        let isFavoriteUrl = "\(Constants.backendURL)/animals/\(animalId)/favorite"
        guard let url = URL(string: isFavoriteUrl) else {
            errorMessage = "Invalid URL"
            return
        }
        
        let accessToken = UserDefaultsManager().getAccessToken()
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization") // Add your token
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
//        isLoading = true
        isFavorite = true
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
//                self.isLoading = false
                
                if let error = error {
                    self.errorMessage = "Mark as Favorite request failed: \(error.localizedDescription)"
                    self.isFavorite = false
                    completion(false)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    self.errorMessage = "Invalid response from the server"
                    self.isFavorite = false
                    completion(false)
                    return
                }
                
                switch httpResponse.statusCode {
                case 201:
                    completion(true)
                default:
                    self.errorMessage = "Failed with HTTP code: \(httpResponse.statusCode)"
                    self.isFavorite = false
                    completion(false)
                }
            }
        }.resume()
    }
}
