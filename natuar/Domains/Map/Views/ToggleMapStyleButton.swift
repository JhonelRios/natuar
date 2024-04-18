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
                .foregroundColor(.gray)
                .padding()
        }
        .background(.white)
        .frame(width: 60, height: 60)
        .cornerRadius(20)
        .shadow(radius: 2)
//        .opacity(0.5)
    }
}

// Extensión para redondear esquinas específicas
//extension View {
//    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
//        clipShape( RoundedCorner(radius: radius, corners: corners) )
//    }
//}
//
//struct RoundedCorner: Shape {
//    var radius: CGFloat = .infinity
//    var corners: UIRectCorner = .allCorners
//
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        return Path(path.cgPath)
//    }
//}

#Preview {
    ToggleMapStyleButton(
        onMapStyleButtonTapped: {
            print("Tap map style")
        }
    )
}
