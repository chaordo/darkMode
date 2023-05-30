//
//  SettingsView.swift
//  darkMode
//
//  Created by John on 5/30/23.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("SUPPORT")) {
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark Mode")
                    }
                    /*Button(action: {
                        isDarkMode.toggle()
                    }, label: {
                        Text("Dark Mode")
                    })*/
                    NavigationLink(destination: Text("Feedback")) {
                        Label("Feature Request", systemImage: "clipboard.fill")
                    }
                    Text("version 1.0.9")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Settings")
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
