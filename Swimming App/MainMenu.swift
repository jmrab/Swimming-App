import SwiftUI

struct MainMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: NewTimeView()) {
                    Text("Enter New Time")
                }
                NavigationLink(destination: AllTimesView()) {
                    Text("View All Times")
                }
                NavigationLink(destination: CompareView()) {
                    Text("Comparisons")
                }
                NavigationLink(destination: TimeStandardsView()) {
                    Text("Time Standards")
                }
            }
            .navigationTitle("Main Menu")
        }
    }
}
