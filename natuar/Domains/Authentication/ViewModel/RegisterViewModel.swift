//
//  RegisterViewModel.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 9/09/24.
//

import Foundation

class RegisterViewModel : ObservableObject {
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    
    func register(name: String, email: String, password: String, completion: @escaping (Bool) -> Void) {
        let registerURL = "\(Constants.backendURL)/auth/register"
        guard let url = URL(string: registerURL) else { return }
        
        let body = ["name": name, "email": email, "password": password]
        guard let jsonBody = try? JSONSerialization.data(withJSONObject: body) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonBody
        
        isLoading = true
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false
                
                if let error = error {
                    self.errorMessage = "Error en el registro: \(error.localizedDescription)"
                    completion(false)
                    return
                }
                
                guard let httpResponse = response as? HTTPURLResponse else {
                    self.errorMessage = "Invalid response from the server"
                    completion(false)
                    return
                }
                
                switch httpResponse.statusCode {
                case 201:
                    completion(true)
                case 400..<500:
                    self.errorMessage = "Error en el registro. Verifica tus datos."
                    completion(false)
                default:
                    self.errorMessage = "Failed with HTTP code: \(httpResponse.statusCode)"
                    completion(false)
                }
            }
        }.resume()
    }
}
