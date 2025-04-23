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

    var body: some View {
        VStack {
            TextField("Habit Title", text: $habitTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)

            TextField("Category", text: $category)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)

            Button("Add Habit") {
                viewModel.addHabits(title: habitTitle, category: category)
                habitTitle = ""
                category = ""
            }
            .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        LinearGradient(colors: [.orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(12)
                    .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.white.opacity(0.8), lineWidth: 2)
                    )
        }
        .padding()
    }
}

#Preview {
    AddHabitView(viewModel: HabitViewModel())
}
