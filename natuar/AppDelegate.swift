//
//  AppDelegate.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 9/06/24.
//

import UIKit
import GoogleSignIn

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        var handled: Bool
        
        handled = GIDSignIn.sharedInstance.handle(url)
        
        if handled { return true }
        
        return false
    }
}
