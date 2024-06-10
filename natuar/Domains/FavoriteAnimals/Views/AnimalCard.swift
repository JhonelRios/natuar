//
//  AnimalCard.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 28/05/24.
//

import SwiftUI

struct AnimalCard: View {
    var animal: Animal
    var background: Color
    
    @StateObject private var favoriteViewModel = FavoriteViewModel()
    var onDelete: () -> Void
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(animal.name)
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                //                    .padding()
                
                Spacer().frame(height: 8)
                
                ZStack(alignment: .leading) {
                    NavigationLink(destination: AnimalScreen(selectedAnimal: animal)) {
                        EmptyView()
                    }.opacity(0)
                    
                    Text("Ver más")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                }
                //                NavigationLink(destination: AnimalScreen(selectedAnimal: animal)) {
                //                    Text("Ver más")
                //                        .font(.system(size: 20))
                //                        .foregroundColor(.white)
                //                }
            }
            .padding(.vertical, 14)
            .padding(.leading, 16)
            
            Spacer()
            
            Menu {
                Button(role: .destructive) {
                    //                    print("delete")
                    favoriteViewModel.deleteFavoriteAnimals(animalId: animal.id) { success in
                        if success {
                            print("successful deleted")
                            onDelete()
                        } else {
                            print(favoriteViewModel.errorMessage ?? "")
                        }
                    }
                } label: {
                    Label("Borrar", systemImage: "trash")
                }
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .rotationEffect(.degrees(90))
                    .frame(height: 60)
            }
            .padding(.trailing, 16)
        }
        .frame(width: .infinity)
        .background(background)
        .cornerRadius(8)
    }
}

#Preview {
    AnimalCard(animal: Animal(id: 1, name: "Llama", scientific_name: "Llama cientifica", description: "Descripcion del animal", weigth: 20, height: 13, average_age: 32, habitat: "Peru", diet: "Pasto", gestation: "Tiene un tiempo de gestacion en prueba", in_danger: false, images: [""], model_name: "llama", latitude: -12.23, longitude: -12.23, spotId: 1), background: .green, onDelete: {})
}
