import SwiftUI

struct AllTimesView: View {
    // Create an observed object raceManager to manage race data
    @ObservedObject var raceManager = RaceManager()
    
    var body: some View {
        NavigationView {
            // Create a list to display race details
            List {
                // Iterate through races in raceManager.races then display in VStack
                ForEach(raceManager.races) { race in
                    VStack(alignment: .leading) {
                        Text("Date: \(race.date)")
                        Text("Time: \(race.time)")
                        Text("Event: \(race.event)")
                        Text("Course: \(race.course)")
                    }
                }
            }
            .navigationTitle("All Races")
        }
    }
}
