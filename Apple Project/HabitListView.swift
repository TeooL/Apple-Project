//
//  HabitListView.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import SwiftUI

struct HabitListView: View {
    @ObservedObject var viewModel : HabitViewModel
    var body: some View {
        NavigationStack {
            VStack {
                Text("HabitQuest")
                    .font(.custom("Georgia", size: 28)) // Cozy serif font
                    .foregroundColor(.brown.opacity(0.8)) // Warm earthy tone
                    .padding()
                    .background(Color.yellow.opacity(0.2)) // Soft glow
                    .cornerRadius(12)
                    .font(.largeTitle)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 10)
                
                List(viewModel.habits) { habit in
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Title: \(habit.title)").font(.headline)
                                .scaledToFit()
                            Text("Category: \(habit.category)").font(.subheadline)
                        }
                        Spacer()
                        Text("Progress: \(Int(habit.progress)) days")
                        // Navigation to HabitDetails
                        NavigationLink(destination: HabitDetails(viewModel: viewModel, habit: habit)) {
                            Image(systemName: "info.circle")
                        }
                        .frame(width: 40, height: 40)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.yellow.opacity(0.3)) // Warm background for the stack
                            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 3)
                    )
                }
                .listStyle(.plain)
                AddHabitView(viewModel: viewModel)
            }
            .background(Color(.systemBrown).opacity(0.1))
        }
    }
}



#Preview {
    HabitListView(viewModel: HabitViewModel())
}
