import SwiftUI

struct NewTimeView: View {
    // State object to manage race data
    @StateObject var raceManager = RaceManager()
    
    // State properties for form input
    @State private var date = Date()
    @State private var time: String = ""
    @State private var event = ""
    @State private var course = ""
    
    // Arrays for event and course selection
    let events = ["Select...", "50 Free", "100 Free", "200 Free", "400/500 Free", "800/1000 Free", "1500/1650 Free", "50 Back", "100 Back", "200 Back", "50 Breast", "100 Breast", "200 Breast", "50 Fly", "100 Fly", "200 Fly", "200 IM", "400 IM"]
    let courses = ["Select...", "Short Course Yards", "Long Course Meters", "Short Course Meters"]
    
    var body: some View {
        VStack {
            Text("Enter New Time")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            // Date picker for selecting the race date
            DatePicker(
                "Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .padding()
            
            // Text field for entering the race time
            TextField("Enter Time", text: $time)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Picker for selecting the race event
            Picker("Select an event", selection: $event) {
                ForEach(events, id: \.self) { eventName in
                    Text(eventName)
                }
            }
            .pickerStyle(.menu)
            .padding()
            
            // Picker for selecting the race course
            Picker("Select a course", selection: $course) {
                ForEach(courses, id: \.self) { courseName in
                    Text(courseName)
                }
            }
            .pickerStyle(.menu)
            .padding()
            
            // Button to save the entered race data
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
    
    // Function to save the entered race data
    func saveRace() {
        print(time)
        print(event)
        print(course)
        let newRace = RaceData(date: date, time: time, event: event, course: course)
        raceManager.addRace(race: newRace)
    }
}
