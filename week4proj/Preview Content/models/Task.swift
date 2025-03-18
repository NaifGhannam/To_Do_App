import SwiftUI

// Task model
struct Task: Identifiable ,Equatable {
    var id = UUID()
    var name: String
    var color: Color
}
