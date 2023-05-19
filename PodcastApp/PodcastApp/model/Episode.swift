import Foundation

struct Episode : Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let date: String
    let time: String
}
