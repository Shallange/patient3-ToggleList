//
//  TaskListView.swift
//  PatientCase_3
//
//  Created by Jimmy kroneld on 2026-04-17.
//

import SwiftUI
import Observation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isDone: Bool = false
}

@Observable
class TaskViewModel {
    var tasks: [Task] = [
        Task(title: "Handla mat"),
        Task(title: "Plugga Swift"),
        Task(title: "Träna"),
    ]
}

struct TaskListView: View {
    @Bindable var viewModel: TaskViewModel

    var body: some View {
        List {
            ForEach($viewModel.tasks) { $task in
                HStack {
                    Text(task.title)
                    Spacer()
                    Toggle("", isOn: $task.isDone)
                }
            }
        }
    }
}
