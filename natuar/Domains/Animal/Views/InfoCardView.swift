//
//  InfoCardView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 24/05/24.
//

import SwiftUI

struct InfoCardView: View {
    var icon: Image
    var title: String
    var value: String
    var rotationDegrees: Double = 0
    var background: Color
    
    var body: some View {
        VStack(alignment: .leading) {  // Vertical stack for icon, title, and value
            icon
                .font(.system(size: 24))
                .foregroundColor(.white)
                .rotationEffect(.degrees(rotationDegrees))
                .frame(height: 24)
            
            Spacer().frame(height: 8)
            
            Text(title)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.white)
            
            Spacer().frame(height: 2)
            
            Text(value)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .padding(.horizontal, 12)
        .padding(.vertical, 10)
        .background(background)  // Background color for each card
        .cornerRadius(6)  // Rounded corners
    }
}

#Preview {
    HStack(spacing: 10) {
        InfoCardView(icon: Image(systemName: "gauge.with.needle"), title: "Peso", value: "20.4 kg", background: Color("PrimaryColorLigth"))
        
        InfoCardView(icon: Image(systemName: "ruler"), title: "Peso", value: "20.4 kg", background: Color("PrimaryColorAccent"))
        
        InfoCardView(icon: Image(systemName: "clock"), title: "Peso", value: "20.4 kg", background: Color("PrimaryColorDark"))
    }
}
