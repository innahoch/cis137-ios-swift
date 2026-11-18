//
//  FlowerGameViewModel.swift
//  Flower Memory Game
//
//  Created by Inna Hoch on 11/17/26.
//


import SwiftUI
import Combine

class FlowerGameViewModel: ObservableObject {

    @Published var cards = [

        FlowerCardModel(image: "flower1"),
        FlowerCardModel(image: "flower1"),

        FlowerCardModel(image: "flower2"),
        FlowerCardModel(image: "flower2"),

        FlowerCardModel(image: "flower3"),
        FlowerCardModel(image: "flower3"),

        FlowerCardModel(image: "flower4"),
        FlowerCardModel(image: "flower4"),

        FlowerCardModel(image: "flower7"),
        FlowerCardModel(image: "flower7"),

        FlowerCardModel(image: "flower9"),
        FlowerCardModel(image: "flower9")
    ]

    @Published var matchedPairs = 0

    var firstCardIndex: Int?

    var isChecking = false

    func flipCard(_ card: FlowerCardModel) {

        if isChecking {
            return
        }

        if let index = cards.firstIndex(where: { $0.id == card.id }) {

            if cards[index].isFaceUp {
                return
            }

            cards[index].isFaceUp = true

            if let firstIndex = firstCardIndex {

                if cards[firstIndex].image == cards[index].image {

                    matchedPairs += 1
                    firstCardIndex = nil

                } else {

                    isChecking = true

                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {

                        self.cards[firstIndex].isFaceUp = false
                        self.cards[index].isFaceUp = false

                        self.firstCardIndex = nil
                        self.isChecking = false
                    }
                }

            } else {

                firstCardIndex = index
            }
        }
    }
}
