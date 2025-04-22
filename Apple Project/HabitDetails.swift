//
//  HabitDetails.swift
//  Apple Project
//
//  Created by Student on 4/22/25.
//

import SwiftUI

struct HabitDetails: View {
    @ObservedObject var viewModel : HabitViewModel
    @State var habit: Habit
    
    var body: some View {
        VStack{
            Text("Title: ")
            Text("Category: ")
            ProgressView(value: viewModel.calcProgress(habit: habit)){
                Text("\(Int(habit.progress))/\(Int(habit.goal)) Days")
            }
                .padding()
            Text("Details: ")
        }
    }
}

#Preview {
    let habit = Habit(title: "title", category: "category", progress: 1, details: "n/a", goal: 1)
    HabitDetails(viewModel: HabitViewModel(), habit: habit)
}
