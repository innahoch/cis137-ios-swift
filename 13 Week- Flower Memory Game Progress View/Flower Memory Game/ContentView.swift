//
// Assignment 13
// Inna Hoch
// 11/17/2026
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = FlowerGameViewModel()

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

                ForEach(viewModel.cards) { card in

                    FlowerCard(card: card)
                        .aspectRatio(1, contentMode: .fit)
                        .onTapGesture {

                            withAnimation(.snappy) {
                                viewModel.flipCard(card)
                            }
                        }
                }
            }

            ProgressView(
                "Matched Pairs",
                value: Double(viewModel.matchedPairs),
                total: 6
            )
        }

        .padding()
    }
}

struct FlowerCard: View {

    var card: FlowerCardModel

    var body: some View {

        ZStack {

            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 3)
                .foregroundColor(.purple)

            if card.isFaceUp {

                Image(card.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .transition(.scale)

            } else {

                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.purple)
                    .transition(.scale)
            }
        }

        .padding()
        .animation(.snappy, value: card.isFaceUp)
    }
}

#Preview {

    ContentView()
}
