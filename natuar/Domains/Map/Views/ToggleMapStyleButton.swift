//
//  ControlButtonsView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct ToggleMapStyleButton : View {
    let buttonWidth: CGFloat = 30
    var onMapStyleButtonTapped: () -> Void
    
    var body: some View {
        Button(action: onMapStyleButtonTapped) {
            Image(systemName: "map.fill")
                .font(.system(size: 16, weight: .bold)) // Customize the size and weight as needed
                .foregroundColor(.blue)
                .padding(10)  // Adjust padding to match the size of the icon and background
                .background(.white)  // Button background color
                .opacity(9)
                .clipShape(RoundedRectangle(cornerRadius: 8))  // Rounded corners
//                .shadow(color: .gray, radius: 1, x: 0, y: 0)  // Subtle shadow for 3D effect
        }
        
    }
}

#Preview {
    ToggleMapStyleButton(
        onMapStyleButtonTapped: {
            print("Tap map style")
        }
    )
}
