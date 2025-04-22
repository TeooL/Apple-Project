//
//  Habit.swift
//  Apple Project
//
//  Created by Student on 4/21/25.
//

import Foundation
import CoreData

struct Habit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var category: String
    var progress: Double
    var details: String
}
