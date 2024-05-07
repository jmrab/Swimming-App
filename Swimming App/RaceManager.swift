import SwiftUI
import Foundation

// Class to manage race data and conform to ObservableObject
class RaceManager: ObservableObject {
    // Published property to track races and trigger UI updates
    @Published var races: [RaceData] = []
    
    // Initialize the RaceManager and load saved races
    init() {
        self.loadRaces()
    }
    
    // Add a new race to the races array and save races
    func addRace(race: RaceData) {
        races.append(race)
        saveRaces()
    }
    
    // Save races data to UserDefaults using JSON encoding
    private func saveRaces() {
        do {
            let data = try JSONEncoder().encode(races)
            UserDefaults.standard.set(data, forKey: "races")
        } catch {
            print("Error saving races:", error)
        }
    }
    
    // Delete a race from the races array and save races
        func deleteRace(race: RaceData) {
            races.removeAll(where: { $0.id == race.id })
            saveRaces()
        }
    
    // Load races data from UserDefaults using JSON decoding
    private func loadRaces() {
        if let data = UserDefaults.standard.data(forKey: "races") {
            do {
                races = try JSONDecoder().decode([RaceData].self, from: data)
            } catch {
                print("Error loading races:", error)
            }
        }
    }
}
