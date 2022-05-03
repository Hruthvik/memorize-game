//
//  MemorizeGameApp.swift
//  MemorizeGame
//
//  Created by Hruthvik Raj on 2022/03/11.
//

import SwiftUI

@main
struct MemorizeGameApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
