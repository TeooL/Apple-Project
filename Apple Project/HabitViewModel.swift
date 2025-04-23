//
//  HabitViewModel.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import Foundation

class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    
    static let challenges: [String] = [
            "Drink an extra glass of water today.",
            "Stretch for 5 minutes after waking up.",
            "Write down 3 things you're grateful for.",
            "Take a 10-minute walk outside.",
            "Compliment someone genuinely.",
            "Read 5 pages of a book.",
            "Reduce screen time by 15 minutes.",
            "Listen to relaxing music before bed.",
            "Try deep breathing for 30 seconds.",
            "Meditate for 10 minutes.",
            "Do 20 push-ups or 30 sit-ups.",
            "Write a journal entry about today's feelings.",
            "Cook a meal without processed ingredients.",
            "Spend 30 minutes learning a new skill.",
            "Limit social media use to 30 minutes today.",
            "Send a kind message to a friend you haven’t talked to in a while.",
            "Replace a negative thought with a positive affirmation.",
            "Complete a cold shower challenge (30 seconds minimum).",
            "Try 1 hour of digital detox—no phone, TV, or distractions.",
            "Wake up 1 hour earlier than usual.",
            "Do a random act of kindness for a stranger.",
            "Take a fear-challenge—do something outside your comfort zone.",
            "Run or walk 5 miles (or equivalent cardio workout).",
            "Avoid caffeine for a full day (if you're used to it!).",
            "Try a new physical challenge, like yoga or a martial arts exercise."
        ]
    
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
    func achievementBadge(for progress: Double, goal: Double) -> Bool {
        if progress >= goal {
            return true
        }
        return false
    }
    static func getDailyChallenge() -> String {
        return challenges.randomElement() ?? "Take a deep breath and smile!"
    }
}
