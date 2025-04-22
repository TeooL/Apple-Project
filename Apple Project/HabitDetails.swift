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
            Text("Title: \(habit.title)")
            Text("Category: \(habit.category)")
            Spacer()
            ProgressView(value: viewModel.calcProgress(habit: habit, goal: 10)){
                Text("\(Int(habit.progress))/ 10 Days")
            }
            .padding()
            ProgressView(value: viewModel.calcProgress(habit: habit, goal: 30)){
                Text("\(Int(habit.progress))/ 30 Days")
            }
            .padding()
            ProgressView(value: viewModel.calcProgress(habit: habit, goal: 60)){
                Text("\(Int(habit.progress))/ 60 Days")
            }
            .padding()
            Text("Details: \(habit.details)")
            Spacer()
            
            HStack(spacing: 20) {
                // Increment Days Button
                Button(action: {
                    viewModel.updateProgress(habit: habit)
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
