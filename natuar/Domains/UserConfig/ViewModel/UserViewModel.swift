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
        self.user = offlineUser.user
    }
    
    func fetchSeenAnimals() {
        self.seenAnimals = offlineUser.seenAnimals
    }
    
    func updateUser(userId: Int, name: String, completion: @escaping (Bool) -> Void) {
        let userUrl = "\(Constants.backendURL)/tourists/\(userId)"
        guard let url = URL(string: userUrl) else {
            errorMessage = "Invalid URL"
            return
        }
        
        let accessToken = UserDefaultsManager().getAccessToken()
        
        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.addValue("Bearer \(accessToken)", forHTTPHeaderField: "Authorization") // Add your token
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
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
        completion(true)
    }
    
    func logout() {
        UserDefaultsManager().clearAccessToken()
    }
}
