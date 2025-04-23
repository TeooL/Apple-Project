//
//  DailyChallengesView.swift
//  Apple Project
//
//  Created by Student on 4/23/25.
//

import SwiftUI

struct DailyChallengesView: View {
    @State var challenge1 = HabitViewModel.getDailyChallenge()
    @State var challenge2 = HabitViewModel.getDailyChallenge()
    @State var challenge3 = HabitViewModel.getDailyChallenge()
    var body: some View {
        ZStack{
            VStack(spacing: 40) {
                Text("Today's Challenges")
                    .font(.title)
                    .bold()
                    .offset(y: -60)
                Text(challenge1)
                    .frame(width: 300, height: 50)
                    .font(.headline)
                    .padding()
                    .background(Color.yellow.opacity(0.2))
                    .cornerRadius(12)
                Text(challenge2)
                    .frame(width: 300, height: 50)
                    .font(.headline)
                    .padding()
                    .background(Color.yellow.opacity(0.2))
                    .cornerRadius(12)
                Text(challenge3)
                    .frame(width: 300, height: 50)
                    .font(.headline)
                    .padding()
                    .background(Color.yellow.opacity(0.2))
                    .cornerRadius(12)
                
                Button("Get New Challenges") {
                    challenge1 = HabitViewModel.getDailyChallenge()
                    challenge2 = HabitViewModel.getDailyChallenge()
                    challenge3 = HabitViewModel.getDailyChallenge()
                }
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.8), lineWidth: 2)
                )
                .offset(y:70)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(
            LinearGradient(
                colors: [.orange.opacity(0.2), .yellow.opacity(0.3), .red.opacity(0.2)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .overlay(
                Image(systemName: "sparkles")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.08)
                    .frame(width: .infinity, height:.infinity)
            )
        )
        .ignoresSafeArea()
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 4)
    }
}


#Preview {
    DailyChallengesView()
}
