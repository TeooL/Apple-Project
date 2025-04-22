//
//  EditDetails.swift
//  Apple Project
//
//  Created by Student on 4/22/25.
//

import SwiftUI

struct EditDetails: View {
    @ObservedObject var viewModel : HabitViewModel
    @State var habit: Habit
    
    @State private var newDetails: String = ""
    @State private var newTitle: String = ""
    @State private var newCategory: String = ""
    
    var body: some View {
        @State var details = habit.details
        ZStack {
            VStack {
                TextField("Title", text: $newTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Category", text: $newCategory)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Details", text: $details, axis: .vertical)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .lineLimit(10...15)
                Spacer()
                Button(action: {
                    viewModel.updateHabit(habit: habit, details: newDetails, title: newTitle, category: newCategory)
                }){
                    Text("Save Changes")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    EditDetails(viewModel : HabitViewModel(), habit : Habit(title: "", category: "", progress: 0.0, details: ""))
}
