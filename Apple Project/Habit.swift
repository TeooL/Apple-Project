//
//  Habit.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import Foundation
import CoreData

class Habit: ObservableObject, Identifiable {
    var id = UUID()
    @Published var title: String
    @Published var category: String
    @Published var progress: Double
    @Published var details: String
    
    init(title: String, category: String, progress: Double, details: String) {
        self.title = title
        self.category = category
        self.progress = progress
        self.details = details
    }
}
