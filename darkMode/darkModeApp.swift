//
//  darkModeApp.swift
//  darkMode
//
//  Created by John on 5/30/23.
//

import SwiftUI

@main
struct darkModeApp: App {
    
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavigationLink(destination: SettingsView()) {
                                Text("settings")
                            }
                        }
                    }
            }
        }
        }
    }
