//
//  ContentView.swift
//  Sample
//
//  Created by Ricardo Rachaus on 13/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
//                .foregroundStyle(OpenColors.surface)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
