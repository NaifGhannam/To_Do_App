//
//  TaskRowView.swift
//  week4proj
//
//  Created by Mac on 18/09/1446 AH.
//

import SwiftUI

struct TaskRowView: View {
    var task: Task
    
    var body: some View {
        HStack {
            Text(task.name)
                .foregroundColor(.white) // Text color for the task
            Spacer()
            Circle()
                .fill(task.color) // Show color circle for task color flagging
                .frame(width: 24, height: 24)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
        .shadow(radius: 5) // Add shadow effect
    }
}
