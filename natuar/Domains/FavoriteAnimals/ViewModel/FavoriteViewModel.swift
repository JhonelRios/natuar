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
        let favoritesUrl = "\(Constants.backendURL)/animals/favorites"
        guard let url = URL(string: favoritesUrl) else {
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
                    self.errorMessage = "Favorite Animals request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    self.errorMessage = "Error: Non-200 HTTP status code"
                    completion(false)
                    return
                }
                
                if let favoritesResponse = try? JSONDecoder().decode([Animal].self, from: data) {
                    self.favoriteAnimals = favoritesResponse
                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode favorites animals response"
                    completion(false)
                }
            }
        }.resume()
    }
    
    func deleteFavoriteAnimals(animalId: Int, completion: @escaping (Bool) -> Void) {
        let favoritesUrl = "\(Constants.backendURL)/animals/favorites/\(animalId)"
        guard let url = URL(string: favoritesUrl) else {
            errorMessage = "Invalid URL"
            return
        }
        
        let accessToken = UserDefaultsManager().getAccessToken()
        
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization") // Add your token
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        isLoading = true
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                
                if let error = error {
                    self.errorMessage = "Delete request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    self.errorMessage = "Invalid response from the server"
                    completion(false)
                    return
                }
                
                switch httpResponse.statusCode {
                case 200:
                    completion(true)
                default:
                    self.errorMessage = "Failed with HTTP code: \(httpResponse.statusCode)"
                    completion(false)
                }
            }
        }.resume()
    }
}
