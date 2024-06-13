//
//  MainScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct MainScreen: View {
    @State var logged = false
    
    var body: some View {
        if !logged {
            LoginScreen(loginAction: { logged.toggle() })
        } else {
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
                
                UserConfigScreen(logoutAction: { logged.toggle() })
                    .tabItem {
                        Image(systemName: "gearshape").environment(\.symbolVariants, .none)
                        Text("Ajustes")
                    }
            }
            .accentColor(Color("PrimaryColor"))
        }
    }
}

#Preview {
    MainScreen()
}
