//
//  natuarApp.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 14/04/24.
//

import SwiftUI
import GoogleSignIn

@main
struct natuarApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}
