//
//  MemorizaApp.swift
//  Memoriza
//
//  Created by Jérémie Patot on 13/03/2023.
//

import SwiftUI

@main
struct MemorizaApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
