import SwiftUI
import Foundation

class RaceManager: ObservableObject {
    @Published var races: [RaceData] = []
    
    init() {
        self.loadRaces()
    }
    
    func addRace(race: RaceData) {
        races.append(race)
        saveRaces()
    }
    
    private func saveRaces() {
        do {
            let data = try JSONEncoder().encode(races)
            UserDefaults.standard.set(data, forKey: "races")
        } catch {
            print("Error saving races:", error)
        }
    }
    
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
