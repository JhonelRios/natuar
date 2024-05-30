//
//  CustomLoginButton.swift
//  natuar
//
//  Created by Nilton Torres on 13/05/24.
//

import Foundation
import SwiftUI
struct CustomLoginButton: View {
    var text: String
    var action: () -> Void
    @Binding var isLoading: Bool
    
    var body: some View {
        Button(action: {
            if !isLoading {
                action()
            }
        }) {
            HStack {
                if isLoading {
                    ProgressView()  // Show a spinner when loading
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(0.5)
                        .foregroundColor(.white)
                }
                
                Text(text)
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("PrimaryColor"))
        .opacity(isLoading ? 0.65 : 1.0)
        .cornerRadius(30)
        .disabled(isLoading)
        .padding()
    }
}

#Preview {
    @State var loading: Bool = false
    
    return CustomLoginButton(text: "Login", action: {
        print("login")
    }, isLoading: $loading)
}
