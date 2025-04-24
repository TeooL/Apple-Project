//
//  EditDetails.swift
//  Apple Project
//
//  Created by Student on 4/22/25.
//

import SwiftUI

struct EditDetails: View {
    @ObservedObject var viewModel : HabitViewModel
    @ObservedObject var habit: Habit
    
    @State private var newDetails: String = ""
    @State private var newTitle: String = ""
    @State private var newCategory: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                TextField("Title", text: $newTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .overlay(
                        RoundedRectangle(cornerRadius:5)
                            .stroke(Color.brown, lineWidth: 2)
                    )
                    .shadow(radius: 5)
                    .padding()
                TextField("Category", text: $newCategory)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .overlay(
                        RoundedRectangle(cornerRadius:5)
                            .stroke(Color.brown, lineWidth: 2)
                    )
                    .shadow(radius: 5)
                    .padding()
                TextField("Details", text: $newDetails, axis: .vertical)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .overlay(
                        RoundedRectangle(cornerRadius:5)
                            .stroke(Color.brown, lineWidth: 2)
                    )
                    .shadow(radius: 5)
                    .lineLimit(15...20)
                    .padding()
                Spacer()
                Button(action: {
                    viewModel.updateHabit(habit: habit, details: newDetails, title: newTitle, category: newCategory)
                }){
                    Text("Save Changes")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.yellow)
                        .background(
                            LinearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .cornerRadius(10)
                }
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.brown.opacity(0.7), Color.orange.opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

#Preview {
    EditDetails(viewModel : HabitViewModel(), habit : Habit(title: "", category: "", progress: 0.0, details: ""))
}
