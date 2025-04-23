//
//  HabitDetails.swift
//  Apple Project
//
//  Created by Student on 4/22/25.
//

import SwiftUI

struct HabitDetails: View {
    @ObservedObject var viewModel : HabitViewModel
    @ObservedObject var habit: Habit
    
    var body: some View {
        VStack{
            Text("Title: \(habit.title)")
                .font(.custom("Georgia", size: 26)) // Warm serif font
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.yellow.opacity(0.2)) // Gentle yellow backdrop
                                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 3)
                            )
                            .padding(.vertical)
            Text("Category: \(habit.category)")
                .font(.custom("Georgia", size: 20)) // Warm serif font
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.yellow.opacity(0.2)) // Gentle yellow backdrop
                                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 3)
                            )
                            .padding(.horizontal)
            ProgressView(value: viewModel.calcProgress(habit: habit, goal: 10)){
                HStack {
                    Text("\(Int(habit.progress))/ 10 Days")
                    if (viewModel.achievementBadge(for: habit.progress, goal: 10)) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                    }
                }
            }
            .padding()
            ProgressView(value: viewModel.calcProgress(habit: habit, goal: 30)){
                HStack{
                    Text("\(Int(habit.progress))/ 30 Days")
                    if (viewModel.achievementBadge(for: habit.progress, goal: 30)) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                    }
                }
            }
            .padding()
            ProgressView(value: viewModel.calcProgress(habit: habit, goal: 60)) {
                HStack{
                    Text("\(Int(habit.progress))/ 60 Days")
                    if (viewModel.achievementBadge(for: habit.progress, goal: 60)) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                    }
                }
            }
            .padding()
            Text("Details: \(habit.details)")
            Spacer()
            
            HStack(spacing: 20) {
                // Increment Days Button
                Button(action: {
                    habit.progress += 1
                    print("Increment Progress Clicked")
                }) {
                    Label("Complete", systemImage: "plus.circle")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                
                // Delete Habit Button
                Button(action: {
                    viewModel.removeHabit(habit: habit)
                    print("Delete Habit Clicked")
                }) {
                    Label("Delete Habit", systemImage: "trash")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 20) // Adds padding at the bottom
            NavigationLink(destination: EditDetails(viewModel: viewModel, habit: habit)) {
                            Text("Edit Details")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
        }
        .background(Color(UIColor.systemGroupedBackground)) // Clean background
        .cornerRadius(12)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    let habit = Habit(title: "title", category: "category", progress: 0, details: "n/a")
    HabitDetails(viewModel: HabitViewModel(), habit: habit)
}
