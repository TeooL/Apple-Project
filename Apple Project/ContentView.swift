//
//  ContentView.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = HabitViewModel()
    var body: some View {
        VStack {
            TabView {
                HabitListView(viewModel: viewModel)
                    .tabItem {
                        Label("Habits", systemImage: "checkmark.circle.fill")
                    }

                DailyChallengesView()
                    .tabItem {
                        Label("Challenges", systemImage: "star.fill")
                    }
            }
        }
    }
}

#Preview {
    ContentView(viewModel: HabitViewModel())
}
