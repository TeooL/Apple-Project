//
//  MainMenu.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import SwiftUI

struct MainMenu: View {
    @Binding var showGameView : Bool
    
    var body: some View {
            ZStack{
                VStack{
                    Image(systemName: "cube")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Text("Shape Defense")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Text("By Sam Did Sing")
                        .font(.title2)
                    Button {
                        showGameView = true
                    } label: {
                        Text("Start Game")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(width: 200, height: 50)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                Image(systemName: "triangle")
                    .foregroundStyle(.red)
                    .font(.title2)
                    .offset(x: 90, y: -200)
                Image(systemName: "cube")
                    .foregroundStyle(.blue)
                    .font(.title2)
                    .offset(x: -90, y: 270)
                Image(systemName: "circle")
                    .foregroundStyle(.green)
                    .font(.title2)
                    .offset(x: -70, y: -240)
            }
        }
}

#Preview {
    @Previewable @State var previousShowGameView = false
    
    MainMenu(showGameView: $previousShowGameView)
}
