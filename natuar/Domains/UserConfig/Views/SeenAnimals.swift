//
//  SeenAnimals.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 12/06/24.
//

import SwiftUI

struct SeenAnimals: View {
    var seenAnimals: [Animal]
    
    var body: some View {
        NavigationStack {
            if seenAnimals.isEmpty {
                VStack {
                    Text("No has vistos ningún animal")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                        .padding()
                }
            } else {
                List(seenAnimals) { animal in
                    HStack(alignment: .lastTextBaseline) {
                        Text(animal.name)
                        
                        Text("(\(animal.scientific_name))")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                .listStyle(.plain)
            }
        }
        .navigationTitle("Animales vistos")
    }
}

#Preview {
    SeenAnimals(seenAnimals: [])
}
