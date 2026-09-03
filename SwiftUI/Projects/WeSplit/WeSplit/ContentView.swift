//
//  ContentView.swift
//  WeSplit
//
//  Created by Ali Abbas on 03/09/2026.
//

import SwiftUI

struct ContentView: View {
    static let students = ["Izen", "Abbas", "Ali"]
    @State private var selectedStudent = students[0]

    var body: some View {
        Form {
            Picker("Select your Student", selection: $selectedStudent) {
                ForEach(ContentView.students, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
