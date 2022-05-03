//
//  EmojiMemoryGame.swift
//  MemorizeGame
//
//  Created by Hruthvik Raj on 2022/03/18.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject{
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🚂", "🚀", "🚁", "🚜","🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🦽", "🦼", "🛴", "🚲", "🛵", "🏍", "🛺"]

    private static func createMemoryGame() -> MemoryGame<String>{
         MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in EmojiMemoryGame.emojis[pairIndex]}
    }
    
    @Published private var model = createMemoryGame()
    
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}

