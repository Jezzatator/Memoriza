//
//  EmojiMemoryGame.swift
//  Memoriza
//
//  Created by Jérémie Patot on 17/03/2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚗","🚲","✈️","🚀","🚚","🚌","🛵","🛸","🛶","⛵️","🚁","🚂","🛴","🚒","🛩️","🚜","🏍️","🛺","🏎️","🚠","🚟","🦽"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: 9) { pairIndex in
            emojis[pairIndex]
        }
    }
        
   @Published private var model = createMemoryGame()
    
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
