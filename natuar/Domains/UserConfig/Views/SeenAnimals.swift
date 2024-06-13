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
}

#Preview {
    SeenAnimals(seenAnimals: [Animal(id: 1, name: "Llama", scientific_name: "Llama cientifica", description: "Descripcion del animal", weigth: 20, height: 13, average_age: 32, habitat: "Peru", diet: "Pasto", gestation: "Tiene un tiempo de gestacion en prueba", in_danger: false, images: [""], model_name: "llama", latitude: -12.23, longitude: -12.23, spotId: 1)])
}
