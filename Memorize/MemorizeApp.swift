//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Kan Yin Chan on 13/3/2024.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
