//
//  ContentView.swift
//  Apple Project
//
//  Created by Student on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = HabitViewModel()
    var body: some View {
        VStack {
            HabitListView(viewModel: viewModel)
        }
    }
}

#Preview {
    ContentView(viewModel: HabitViewModel())
}
