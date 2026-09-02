/*:
 Assignment #2
 Inna Hoch
 9/1/2026
 */

import UIKit

let names = [
    "Anna": 10,
    "Alex": 20,
    "Brian":30,
    "Jack":40
]

let greetings = [
    "Howdy",
    "Good morning",
    "Good afternoon",
    "Good evening",
    "Greetings"
]
for (name,age) in names {
    let randomNumber = Int.random(in:0..<greetings.count)
    let randomGreeting = greetings[randomNumber]
    
    print("\(randomGreeting), \(name). Happy \(age)th birthday. Have a wonderful day")
    
    switch age {
    case 0..<18:
        print("You are a child.")
    case 18...25:
        print("You are a young adult.")
    case 26...65:
        print("You are an adult.")
    default:
        print("You are elderly.")
    }
}
