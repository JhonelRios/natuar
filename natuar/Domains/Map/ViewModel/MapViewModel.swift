//
//  MapViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 29/05/24.
//

import Foundation

class MapViewModel : ObservableObject {
    @Published var spot: Spot?
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchNearestSpot(latitude: Double, longitude: Double, completion: @escaping (Bool) -> Void) {
        let nearestSpotUrl = "\(Constants.backendURL)/spots/nearest?lat=\(latitude)&lon=\(longitude)"
        guard let url = URL(string: nearestSpotUrl) else {
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
                if let error = error {
                    self.isLoading = true
                    self.errorMessage = "Spot request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    self.isLoading = true
                    self.errorMessage = "Error: Non-200 HTTP status code"
                    completion(false)
                    return
                }
                
                if let spotResponse = try? JSONDecoder().decode(Spot.self, from: data) {
                    self.isLoading = true
                    self.spot = spotResponse
                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode spot response"
                    completion(false)
                }
            }
        }.resume()
    }
}
