//
//  HabitViewModel.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import Foundation

class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    
    func addHabits(title: String, category: String){
        let newHabit = Habit(title: title, category: category, progress: 0)
        habits.append(newHabit)
        print("Current Habits: \(habits)")
    }
    func updateProgress(habit: Habit){
        if let index = habits.firstIndex(where: { $0.id == habit.id}) {
            habits[index].progress += 1
        }
    }
    func removeHabit(habit: Habit){
        habits.removeAll { $0.id == habit.id }
    }
}
