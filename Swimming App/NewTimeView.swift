import SwiftUI

struct NewTimeView: View {
    @StateObject var raceManager = RaceManager()
    
    @State private var date = Date()
    @State private var time: String = ""
    @State private var event = ""
    @State private var course = ""
    
    let events = ["400/500 Free", "800/1000 Free", "1500/1650 Free",
                  "50 Back", "100 Back", "200 Back",
                  "50 Breast", "100 Breast", "200 Breast",
                  "50 Fly", "100 Fly", "200 Fly",
                  "200 IM", "400 IM"]
    let courses = ["Short Course Yards", "Long Course Meters", "Short Course Meters"]
    
    var body: some View {
        VStack {
            Text("Enter New Time")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            DatePicker(
                "Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .padding()
            
            TextField("Enter Time", text: $time)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker("Select an event", selection: $event) {
                ForEach(events, id: \.self) { eventName in
                    Text(eventName)
                }
            }
            .pickerStyle(.menu)
            .padding()
            
            Picker("Select a course", selection: $course) {
                ForEach(courses, id: \.self) { courseName in
                    Text(courseName)
                }
            }
            .pickerStyle(.menu)
            .padding()
            
            Button(action: saveRace) {
                Text("Save Race")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
    
    func saveRace() {
        let newRace = RaceData(date: date, time: time, event: event, course: course)
        raceManager.addRace(race: newRace)
    }
}
