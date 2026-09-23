//
//  ContentView.swift
//  Assignment #5
//
//  Created by Inna Hoch on 9/22/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, my name is Inna.")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .padding()
            Image ("Profile").resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    ContentView()
}
