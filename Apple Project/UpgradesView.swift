//
//  UpgradesView.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import SwiftUI

struct UpgradesView: View {
    @EnvironmentObject var data: GameData
    
    var body: some View {
        ZStack {
            // Background
            LinearGradient(
                gradient: Gradient(colors: [.black, .gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                // Title
                Text("Upgrades")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .padding(.bottom, 20)
                
                // Buttons for Upgrades
                Button(action: {
                    data.player.damageUpgrade()
                }) {
                    HStack {
                        Image(systemName: "flame")
                            .foregroundColor(.orange)
                        Text("Increase Bullet Damage (+2 Damage)")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .background(Color.red)
                .cornerRadius(10)
                .shadow(color: .black, radius: 5, x: 0, y: 5)
                
                Button(action: {
                    data.player.attackSpeedUpgrade()
                }) {
                    HStack {
                        Image(systemName: "clock.arrow.circlepath")
                            .foregroundColor(.blue)
                        Text("Increase Attack Speed (+0.2 APS)")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .shadow(color: .black, radius: 5, x: 0, y: 5)
                
                Button(action: {
                    data.player.bulletCountUpgrade()
                }) {
                    HStack {
                        Image(systemName: "burst.fill")
                            .foregroundColor(.purple)
                        Text("Increase Bullet Count (+1 Bullet)")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: .black, radius: 5, x: 0, y: 5)
                
                // Gold Display
                Text("Gold: \(data.player.gold)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20)
            }
            .padding()
        }
    }
}

#Preview {
    UpgradesView()
        .environmentObject(GameData())
}
