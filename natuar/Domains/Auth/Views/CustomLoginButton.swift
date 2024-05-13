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
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
        }
        .padding()
    }
}
