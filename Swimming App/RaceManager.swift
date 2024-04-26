import SwiftUI

class RaceManager: ObservableObject {
    @AppStorage("races") var racesData: Data?
    
    @Published var races: [RaceData] = []
    
    init() {
        if racesData == nil {
            racesData = Data()
        }
       
        self.races = (try? JSONDecoder().decode([RaceData].self, from: racesData!)) ?? []
    }
    
    func addRace(race: RaceData) {
        races.append(race)
    }
}
