//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kan Yin Chan on 14/3/2024.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    //static means making the thing global but the namespace is still inljside
    private static let emojis = ["👻","🎃","🕷️","😈","💀","🕸️","🙀","👹","🦊","🐰","🐭","🐶"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "‼️"
            }
        }
    }
        
    @Published private var model = createMemoryGame()
    
        
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
