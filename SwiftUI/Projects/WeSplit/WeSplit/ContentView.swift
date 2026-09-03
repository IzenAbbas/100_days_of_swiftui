//
//  ContentView.swift
//  WeSplit
//
//  Created by Ali Abbas on 03/09/2026.
//

import SwiftUI

struct ContentView: View {
    @State
    private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is: \(name)")
        }
    }
}

#Preview {
    ContentView()
}
