//
//  TaskListView.swift
//  week4proj
//
//  Created by Mac on 18/09/1446 AH.
//
import SwiftUI

struct TaskListView: View {
    @StateObject var viewModel = TaskViewModel() // ViewModel instance
    @State private var newTaskName: String = ""
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        NavigationStack {
            VStack {
                // Task Input & Add Button
                HStack {
                    TextField("New Task", text: $newTaskName)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Add") {
                        viewModel.addTask(name: newTaskName, color: selectedColor)
                        newTaskName = "" // Reset text field
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .padding()
                
                // Filter and Color Picker
                HStack {
                    Button("Filter") {
                        viewModel.filterTasks()
                    }
                    .padding()
                    
                    Spacer()
                    
                    ColorPicker("Task Color", selection: $selectedColor)
                        .padding()
                }
                
                // Task List
                LazyVStack {
                    ForEach(viewModel.tasks) { task in
                        NavigationLink(destination: TaskDetailView(task: task)) {
                            TaskRowView(task: task)
                                .transition(.slide) // Add slide transition effect
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Task List")
            .preferredColorScheme(.dark) // Dark mode support
            .animation(.default, value: viewModel.tasks) // Animations on task list change
        }
    }
}
