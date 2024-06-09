//
//  LoginViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 29/05/24.
//

import Foundation

struct LoginResponse: Codable {
    let access_token: String
}

class LoginViewModel : ObservableObject {
    @Published var accessToken: String?
    @Published var errorMessage: String?
    
    func login(email: String, password: String, completion: @escaping (Bool) -> Void) {
        let loginURL = "\(Constants.backendURL)/auth/login"
        guard let url = URL(string: loginURL) else { return }
        
        let body = ["email": email, "password": password]
        guard let jsonBody = try? JSONSerialization.data(withJSONObject: body) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonBody
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.errorMessage = "Login request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 201 else {
                    self.errorMessage = "Error: Non-201 HTTP status code"
                    completion(false)
                    return
                }
                
                if let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) {
                    self.accessToken = loginResponse.access_token
                    UserDefaults.standard.set(loginResponse.access_token, forKey: Constants.accessTokenKey)
                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode login response"
                    completion(false)
                }
            }
        }.resume()
    }
    
    func loginWithGoogle(token: String, completion: @escaping (Bool) -> Void) {
        let loginURL = "\(Constants.backendURL)/auth/google"
        guard let url = URL(string: loginURL) else { return }
        
        let body = ["token": token]
        guard let jsonBody = try? JSONSerialization.data(withJSONObject: body) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonBody
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.errorMessage = "Login with google request failed: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 201 else {
                    self.errorMessage = "Error: Non-201 HTTP status code"
                    completion(false)
                    return
                }
                
                if let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) {
                    self.accessToken = loginResponse.access_token
                    UserDefaults.standard.set(loginResponse.access_token, forKey: Constants.accessTokenKey)
                    completion(true)
                } else {
                    self.errorMessage = "Failed to decode login with google response"
                    completion(false)
                }
            }
        }.resume()
    }
    
    func loadToken() {
        if let token = UserDefaults.standard.string(forKey: Constants.accessTokenKey) {
            self.accessToken = token
        }
    }
}
