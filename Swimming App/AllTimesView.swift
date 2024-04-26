import SwiftUI

struct AllTimesView: View {
    @ObservedObject var raceManager = RaceManager() 
    
    var body: some View {
        NavigationView {
            List {
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
