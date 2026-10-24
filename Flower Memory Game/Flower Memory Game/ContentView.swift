//
// Lab #2
// Group #: No group visible in Canvas
// Inna Hoch
// 10/24/2026
//

import SwiftUI

struct ContentView: View {
    
    let images = [
        "flower1", "flower1",
        "flower2", "flower2",
        "flower3", "flower3",
        "flower4", "flower4",
        "flower7", "flower7",
        "flower9", "flower9"
    ]
    
    var body: some View {
        VStack {
            
            Text("Flower Memory Game")
                .font(.largeTitle)
            
            LazyVGrid(
                columns: [
                    GridItem(
                        .adaptive(minimum: 100),
                        spacing: 1
                    )
                ]
            ) {
                ForEach(0..<images.count, id: \.self) { index in
                    FlowerCard(image: images[index])
                        .aspectRatio(1, contentMode: .fit)
                }
            }
        }
        .padding()
    }
}

struct FlowerCard: View {
    
    var image: String
    
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 3)
                .foregroundColor(.purple)
            
            if isFaceUp {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .padding()
            } else {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.purple)
            }
        }
        .padding()
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

#Preview {
    ContentView()
}
