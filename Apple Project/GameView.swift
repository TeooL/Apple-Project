//
//  GameView.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import SwiftUI

struct GameView: View {
    @State var gameData : GameData
    
    var body: some View {
        ZStack {
            Text("GameView")
        }
    }
}

#Preview {
    GameView(gameData: GameData())
}
