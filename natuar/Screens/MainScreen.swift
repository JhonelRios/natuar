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
                    Image(systemName: "mappin.and.ellipse")
                    Text("Mapa")
                }
            
            FavoriteAnimalsScreen()
                .tabItem {
                    Image(systemName: "heart").environment(\.symbolVariants, .none)
                    Text("Favoritos")
                }
            
            UserConfigScreen()
                .tabItem {
                    Image(systemName: "gearshape").environment(\.symbolVariants, .none)
                    Text("Ajustes")
                }
        }
        .accentColor(Color("PrimaryColor"))
    }
}

#Preview {
    MainScreen()
}
