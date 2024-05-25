//
//  BackButton.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 24/05/24.
//

import SwiftUI

struct BackButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle() // Background circle
                    .fill(Color.white.opacity(0.7)) // Semi-transparent white background
                    .frame(width: 45, height: 45)
                
                Image(systemName: "arrow.left") // SF Symbols arrow icon
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray) // Initially white, but we will apply blending
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            }
        }
        .frame(width: 45, height: 45)
        .padding(.top) // Adjust for status bar
        .padding(.leading, 15) // Safe area padding
    }
}

#Preview {
    BackButton(action: { print("test") })
}
