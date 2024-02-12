//  Settings.swift
//  UCRBay

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var userAuth: UserAuth // Assuming you have this ObservableObject

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account")) {
                    Button("Account Settings") {
                        // Handle account settings action
                    }

                    Button("Log Out") {
                        userAuth.isLoggedIn = false // Handle logout action
                    }
                }

                Section(header: Text("Notifications")) {
                    Toggle("Enable Notifications", isOn: $userAuth.notificationsEnabled)
                    // Additional notification settings here
                }
                // Add more settings sections as needed
            }
            .navigationTitle("Settings")
        }
    }
}
