//
//  MainScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            MapScreen()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Mapa")
                }
            
            FavoriteAnimalsScreen()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favoritos")
                }
            
            UserConfigScreen()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Ajustes")
                }
        }
    }
}

#Preview {
    MainScreen()
}
