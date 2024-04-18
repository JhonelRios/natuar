//
//  ControlButtonsView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct ControlButtonsView : View {
    let buttonWidth: CGFloat = 30
    var onMapStyleButtonTapped: () -> Void
    var onLocationButtonTapped: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            Button(action: onMapStyleButtonTapped) {
                Image(systemName: "map.fill")
                    .foregroundColor(.gray)
                    .frame(width: buttonWidth)
                    .padding()
            }
            .background(.white)
            .cornerRadius(10, corners: [.topLeft, .topRight])
            
            Button(action: onLocationButtonTapped) {
                Image(systemName: "location.fill")
                    .foregroundColor(.gray)
                    .frame(width: buttonWidth)
                    .padding()
            }
            .background(.white)
            .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
        }
        .shadow(radius: 2)
    }
}

// Extensión para redondear esquinas específicas
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#Preview {
    ControlButtonsView(
        onMapStyleButtonTapped: {
            print("Tap map style")
        }, 
        onLocationButtonTapped: {
            print("Tap location")
        }
    )
}
