//
//  ContentView.swift
//  WeSplit
//
//  Created by Ali Abbas on 03/09/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello, World")
                    Text("Hello, World")
                    Text("Hello, World")
                    Text("Hello, World")
                    Text("Hello, World")
                }
                Section {
                    Text("Hello, World")
                    Text("Hello, World")
                }
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
            }.navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    ContentView()
}
