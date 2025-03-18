# To-Do List App (SwiftUI)

## Overview

This is a To-Do List application built using SwiftUI that allows users to add, manage, and view tasks. It features multiple screens with navigation, dynamic task management, custom theming, and smooth animations. The app follows the MVVM (Model-View-ViewModel) architecture for efficient state management and separation of concerns.

## Features

- **Multi-Screen Navigation**: 
  - Use of `NavigationStack` and `NavigationLink` to navigate between the task list and task detail views.
  - Passing data between views using `@State`, `@Binding`, and `@ObservedObject`.
  
- **Task Management**:
  - Add new tasks dynamically with an input field and a color flagging feature.
  - Sort tasks alphabetically with a filter button.
  
- **UI Design**:
  - Custom UI design following Apple's Human Interface Guidelines.
  - Support for dark mode using `.preferredColorScheme()`.

- **Animations**:
  - Smooth animations for adding and deleting tasks with `.animation()` and `.transition()`.
  - Fade-in effect when tasks appear.

- **Dynamic Layout**:
  - Adaptive UI that works on different screen sizes using `GeometryReader` and `LazyVStack` for large lists.

## Technologies Used

- SwiftUI
- Combine
- MVVM Architecture
- UserDefaults for data persistence (Optional for future development)

## Secreenshot

![Simulator Screenshot - iPhone 16 Pro - 2025-03-18 at 09 23 07](https://github.com/user-attachments/assets/69de514c-3dba-42d4-a9a7-26ec4a01d93c)
