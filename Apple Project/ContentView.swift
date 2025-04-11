//
//  ContentView.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showGameView = false
    
    var body: some View {
        VStack {
            if showGameView {
                GameView()
            } else {
                MainMenu(showGameView : $showGameView)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
