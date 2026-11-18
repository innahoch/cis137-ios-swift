//
//  FlowerCardModel.swift
//  Flower Memory Game
//Assignment 13
//  Created by Inna Hoch on 11/17/26.
//

import Foundation

struct FlowerCardModel: Identifiable {

    var id = UUID()

    var image: String

    var isFaceUp: Bool = false
}
