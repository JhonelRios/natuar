//
//  AnimalViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 5/06/24.
//

import Foundation

class AnimalViewModel : ObservableObject {
    @Published var animals: [Animal] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
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
}
