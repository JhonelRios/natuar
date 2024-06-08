//
//  FavoriteAnimalsScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct FavoriteAnimalsScreen: View {
    @StateObject private var favoriteViewModel = FavoriteViewModel()
    
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(favoriteViewModel.favoriteAnimals, id: \.id) { animal in
                    AnimalCard(animal: animal, background: .green)
                        .listRowSeparator(.hidden)
                }
            }
            .navigationTitle("Animales Favoritos")
            .searchable(text: $searchTerm, prompt: "Buscar")
            .listStyle(.plain)
        }
        .onAppear {
            favoriteViewModel.fetchFavoriteAnimals() { success in
                if success {
                    print(favoriteViewModel.favoriteAnimals)
                } else {
                    print(favoriteViewModel.errorMessage ?? "")
                }
            }
        }
    }
}

#Preview {
    FavoriteAnimalsScreen()
}
