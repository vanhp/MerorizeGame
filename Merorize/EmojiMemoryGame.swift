//
//  EmojiMemoryGame.swift
//  Merorize
//


import SwiftUI

// the viewmodel
class EmojiMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"/*, "🦄"*/]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in return emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model to set the property
    var cards: Array<MemoryGame<String>.Card> {model.cards}
    
    // MARK: - Intents set this from model
    func choose(card: MemoryGame<String>.Card) { model.choose(card: card)}
    
    func restGame() {model = EmojiMemoryGame.createMemoryGame()}
}
