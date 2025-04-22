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
                Text("Habits")
                    .font(.largeTitle)
                    .padding()

                List(viewModel.habits) { habit in
                    HStack(spacing: 10) {
                        VStack(alignment: .leading) {
                            Text(habit.title).font(.headline)
                            Text(habit.category).font(.subheadline)
                        }
                        Spacer()
                        Text("Progress: \(Int(habit.progress)) days")

                        // Navigation to HabitDetails
                        NavigationLink(destination: HabitDetails(viewModel: viewModel, habit: habit)) {
                            Image(systemName: "info.circle")
                        }
                        .frame(width: 40, height: 40)
                    }
                }
            }
            AddHabitView(viewModel: viewModel)
        }
    }
}



#Preview {
    HabitListView(viewModel: HabitViewModel())
}
