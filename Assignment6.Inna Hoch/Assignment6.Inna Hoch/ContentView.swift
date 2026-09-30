// Assignment #6
// Inna Hoch
// 9/29/2026

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                HStack(spacing: 50) {
                    Text("🐦")
                    Text("🐝")
                    Text("🌸")
                }
                
                HStack(spacing: 50) {
                    Text("✈️")
                    Text("🍃")
                    Text("☀️")
                }
                
                HStack(spacing: 50) {
                    Text("🦋")
                    Text("🌈")
                    Text("☁️")
                }
            }
            .font(.system(size: 100))
        }
    }
}
