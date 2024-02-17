//  UCRBayApp.swift
//  UCRBay
//
//  Created by AM on 2/11/24.
//

import SwiftUI
import Firebase
import UIKit

// AppDelegate Firebase
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct UCRBayApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var userViewModel = UserViewModel()  

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userViewModel) 
        }
    }
}
