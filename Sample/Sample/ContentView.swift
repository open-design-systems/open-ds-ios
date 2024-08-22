//
//  ContentView.swift
//  Sample
//
//  Created by Ricardo Rachaus on 13/07/24.
//

import SwiftUI
import OpenDesignSystem

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            readResources()
        }
    }

    func readResources() {
//        guard let jsonURL = Bundle.main.url(forResource: "open-design-system", withExtension: "json") else { return }
//        let data = try! Data(contentsOf: jsonURL)
//        let designSystem = try! JSONDecoder().decode(OpenDesignSystem.self, from: data)
//        let generator = ModelGenerator(designSystem: designSystem)
//        generator.generate()
    }
}

#Preview {
    ContentView()
}
