//
//  UserViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 12/06/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var user: User?
    @Published var seenAnimals: [Animal] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchUserDetails() {
        let userUrl = "\(Constants.backendURL)/tourists/me"
        guard let url = URL(string: userUrl) else {
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
                    self.errorMessage = "User request failed: \(error.localizedDescription)"
//                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    self.errorMessage = "Error: Non-200 HTTP status code"
//                    completion(false)
                    return
                }
                
                if let userResponse = try? JSONDecoder().decode(User.self, from: data) {
                    self.user = userResponse
//                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode user response"
//                    completion(false)
                }
            }
        }.resume()
    }
    
    func fetchSeenAnimals() {
        let seenAnimalsUrl = "\(Constants.backendURL)/animals/seen"
        guard let url = URL(string: seenAnimalsUrl) else {
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
                    self.errorMessage = "User request failed: \(error.localizedDescription)"
//                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    self.errorMessage = "Error: Non-200 HTTP status code"
//                    completion(false)
                    return
                }
                
                if let seenAnimalsResponse = try? JSONDecoder().decode([Animal].self, from: data) {
                    self.seenAnimals = seenAnimalsResponse
//                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode user response"
//                    completion(false)
                }
            }
        }.resume()
    }
    
    func updateUser(userId: Int, name: String, completion: @escaping (Bool) -> Void) {
        let userUrl = "\(Constants.backendURL)/tourists/\(userId)"
        guard let url = URL(string: userUrl) else {
            errorMessage = "Invalid URL"
            return
        }
        
        let accessToken = UserDefaultsManager().getAccessToken()
        
        let body = ["name": name]
        guard let jsonBody = try? JSONSerialization.data(withJSONObject: body) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization") // Add your token
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonBody
        
        isLoading = true
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                
                if let error = error {
                    self.errorMessage = "Update user request failed: \(error.localizedDescription)"
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
    
    func deleteUser(userId: Int, completion: @escaping (Bool) -> Void) {
        let userUrl = "\(Constants.backendURL)/tourists/\(userId)"
        guard let url = URL(string: userUrl) else {
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
                    self.errorMessage = "Delete user request failed: \(error.localizedDescription)"
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
    
    func logout() {
        UserDefaultsManager().clearAccessToken()
    }
}
