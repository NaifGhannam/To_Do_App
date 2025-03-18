//
//  TaskViewModel.swift
//  week4proj
//
//  Created by Mac on 18/09/1446 AH.
//

import SwiftUI
import Combine

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    // Add a new task to the list
    func addTask(name: String, color: Color) {
        let newTask = Task(name: name, color: color)
        tasks.append(newTask)
    }
    
    // Sort tasks alphabetically
    func filterTasks() {
        tasks.sort { $0.name < $1.name }
    }
}
