//
//  FavoriteAnimalsScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct FavoriteAnimalsScreen: View {
    @StateObject private var favoriteViewModel = FavoriteViewModel()
    
    private let colors: [Color] = [Color("PrimaryColor"), Color("PrimaryColorLigth"), Color("PrimaryColorAccent"), Color("PrimaryColorDark")]
    
    @State private var searchTerm = ""
    
    var filteredAnimals: [Animal] {
        guard !searchTerm.isEmpty else { return favoriteViewModel.favoriteAnimals }
        
        return favoriteViewModel.favoriteAnimals.filter { $0.name.localizedCaseInsensitiveContains(searchTerm) }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredAnimals, id: \.id) { animal in
                    AnimalCard(animal: animal, background: colors[animal.id % colors.count], onDelete: {
                        favoriteViewModel.fetchFavoriteAnimals() { success in
                            if success {
                                print(favoriteViewModel.favoriteAnimals)
                            } else {
                                print(favoriteViewModel.errorMessage ?? "")
                            }
                        }
                    })
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
