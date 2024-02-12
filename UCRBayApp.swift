//  UCRBayApp.swift
//  UCRBay
//
//  Created by AM on 2/11/24.
//

import SwiftUI

@main
struct UCRBayApp: App {
    @StateObject var userAuth = UserAuth()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userAuth)        }
    }
}