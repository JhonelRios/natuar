//
//  AnimalCard.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 28/05/24.
//

import SwiftUI

struct AnimalCard: View {
    var background: Color
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Animal")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
//                    .padding()
                
                Spacer().frame(height: 8)
                
                Button(action: {
                    // Acción del botón "Ver más"
                    print("go to animal view")
                }) {
                    Text("Ver más")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
//                        .padding()
                }
            }
            .padding(.vertical, 14)
            .padding(.leading, 16)
            
            Spacer()
            
            Menu {
                Button(role: .destructive) {
                    print("delete")
                } label: {
                    Label("Borrar", systemImage: "trash")
                }
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .rotationEffect(.degrees(90))
            }
            .padding(.trailing, 16)
        }
        .frame(width: .infinity)
        .background(background)
        .cornerRadius(8)
    }
}

#Preview {
    AnimalCard(background: .green)
}
