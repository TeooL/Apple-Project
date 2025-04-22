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
        let newHabit = Habit(title: title, category: category, progress: 0.0, details: "")
        habits.append(newHabit)
    }
    func updateProgress(habit: Habit){
        if let index = habits.firstIndex(where: { $0.id == habit.id}) {
            habits[index].progress += 1
        }
    }
    func removeHabit(habit: Habit){
        habits.removeAll { $0.id == habit.id }
    }
    func calcProgress(habit: Habit, goal: Double) -> Double {
        return habit.progress / goal
    }
    func updateHabit(habit: Habit, details: String, title: String, category: String){
        if let index = habits.firstIndex(where: { $0.id == habit.id}) {
            habits[index].details = details
            habits[index].title = title
            habits[index].category = category
        }
    }
}
