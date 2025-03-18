//
//  TaskDetailView.swift
//  week4proj
//
//  Created by Mac on 18/09/1446 AH.
//

import SwiftUI

struct TaskDetailView: View {
    var task: Task
    
    var body: some View {
        VStack {
            Text("Task: \(task.name)")
                .font(.largeTitle)
                .padding()
            
            Text("Color: \(task.color.description.capitalized)")
                .padding()
            
            Spacer()
        }
        .navigationTitle("Task Details")
        .padding()
    }
}
