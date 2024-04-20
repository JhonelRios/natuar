//
//  FavoriteAnimalsScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct FavoriteAnimalsScreen: View {
    @State private var searchTerm = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(["Animal 1", "Animal 2", "Animal 3"], id: \.self) { text in
                    Text(text)
                }
                .swipeActions {
                    Button(role: .destructive) {
                        print("delete")
                    } label: {
                        Image(systemName: "trash")
                    }
                }
            }
            .navigationTitle("Animales Favoritos")
            .searchable(text: $searchTerm, prompt: "Buscar")
            .listStyle(.plain)
        }
    }
}

#Preview {
    FavoriteAnimalsScreen()
}
