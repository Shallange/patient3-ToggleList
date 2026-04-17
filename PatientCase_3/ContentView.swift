//
//  ContentView.swift
//  PatientCase_3
//
//  Created by Jimmy kroneld on 2026-04-17.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = TaskViewModel()
    var body: some View {
        TaskListView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
