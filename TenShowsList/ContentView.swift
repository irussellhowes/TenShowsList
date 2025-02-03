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
    let shows = [
        Show(name: "Avatar: The Last Airbender", description: "An epic story of balance and bending.", imageName: "avatar"),
        Show(name: "Brooklyn 99", description: "A comedic take on precinct life.", imageName: "brooklyn99"),
        Show(name: "A Series of Unfortunate Events", description: "A dark and quirky tale of three siblings.", imageName: "asoue"),
        Show(name: "Gravity Falls", description: "Mystery and adventure in a small town.", imageName: "gravityfalls"),
        Show(name: "Sherlock", description: "Modernized detective brilliance.", imageName: "sherlock"),
        Show(name: "Queen's Gambit", description: "A journey of chess and self-discovery.", imageName: "queensgambit")
    ]
    
    var body: some View {
        NavigationView {
            List(shows) { show in
                HStack {
                    VStack(alignment: .leading) {
                        Text(show.name)
                            .font(.headline)
                        Text(show.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Favourite Shows")
        }
    }
}

#Preview {
    ContentView()
}
