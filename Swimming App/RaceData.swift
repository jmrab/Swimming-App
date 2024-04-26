import Foundation

struct RaceData: Codable, Identifiable { 
    var id = UUID()
    var date: Date
    var time: String
    var event: String
    var course: String
}
