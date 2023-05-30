//
//  ContentView.swift
//  darkMode
//
//  Created by John on 5/30/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    @State private var showingSettingsView: Bool = false
    
    var body: some View {
        VStack {
            Text("Home")
            Image("home.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
