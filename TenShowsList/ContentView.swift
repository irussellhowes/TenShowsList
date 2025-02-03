//
//  ContentView.swift
//  TenShowsList
//
//  Created by Isla Russell-Howes on 2025-02-03.
//

import SwiftUI

struct Show: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
