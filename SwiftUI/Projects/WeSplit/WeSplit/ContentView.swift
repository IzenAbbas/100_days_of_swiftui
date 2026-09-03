//
//  ContentView.swift
//  WeSplit
//
//  Created by Ali Abbas on 03/09/2026.
//

import SwiftUI

struct ContentView: View {
    @State
    private var tapCount = 0

    var body: some View {
        Button("Tap Count is: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
