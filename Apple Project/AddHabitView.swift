//
//  AddHabitView.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import SwiftUI

struct AddHabitView: View {
    @StateObject var viewModel : HabitViewModel
    @State private var habitTitle = ""
    @State private var category = ""
    @State private var goal = 0.0

    var body: some View {
        VStack {
            TextField("Habit Title", text: $habitTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Category", text: $category)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Add Habit") {
                viewModel.addHabits(title: habitTitle, category: category, goal: goal)
            }
        }
        .padding()
    }
}

#Preview {
    AddHabitView(viewModel: HabitViewModel())
}
