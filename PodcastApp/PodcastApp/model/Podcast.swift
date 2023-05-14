import Foundation

struct Podcast : Identifiable{
    var id = UUID()
    let title: String
    let author: String
    let description: String
    let imageURL: String
    let episodes: [Episode]
}
