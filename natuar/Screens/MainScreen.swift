//
//  MainScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

class GlobalData: ObservableObject {
    @Published var isTabBarShowed = true
    
    func hideTabBar() {
        isTabBarShowed = false
    }
    
    func showTabBar() {
        isTabBarShowed = true
    }
}

struct MainScreen: View {
    @State var logged = false
    
    @StateObject var globalData = GlobalData()
    
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
                    .toolbar(globalData.isTabBarShowed ? .visible : .hidden, for: .tabBar)
                
                FavoriteAnimalsScreen()
                    .tabItem {
                        Image(systemName: "heart").environment(\.symbolVariants, .none)
                        Text("Favoritos")
                    }
                    .toolbar(globalData.isTabBarShowed ? .visible : .hidden, for: .tabBar)
                
                UserConfigScreen(logoutAction: { logged.toggle() })
                    .tabItem {
                        Image(systemName: "gearshape").environment(\.symbolVariants, .none)
                        Text("Ajustes")
                    }
            }
            .accentColor(Color("PrimaryColor"))
            .environmentObject(globalData)
        }
    }
}

#Preview {
    MainScreen()
}
