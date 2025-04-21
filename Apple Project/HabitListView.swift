//
//  HabitListView.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import SwiftUI

struct HabitListView: View {
    @ObservedObject var viewModel: HabitViewModel
    
    var body: some View {
        Text("Habits").font(.largeTitle)
        List(viewModel.habits) { habit in
            HStack {
                Button(action: {
                    viewModel.removeHabit(habit: habit)
                }) {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                }
                VStack(alignment: .leading) {
                    Text(habit.title).font(.headline)
                    Text(habit.category).font(.subheadline)
                }
                Spacer()
                Text("Progress: \(habit.progress) days")
                Button(action: { viewModel.updateProgress(habit: habit) }) {
                    Image(systemName: "plus.circle")
                }
            }
        }
    }
}

#Preview {
    HabitListView(viewModel: HabitViewModel())
}
