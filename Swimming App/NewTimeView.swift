import SwiftUI

struct NewTimeView: View {
    // State object to manage race data
    @StateObject var raceManager = RaceManager()
    
    // State properties for form input
    @State private var date = Date()
    @State private var time: String = ""
    @State private var event = ""
    @State private var course = ""
    @State private var showCourseInfo = false
    @State private var showMainMenu = false // Added state for navigation

    // Arrays for event and course selection
    let events = ["Event", "50 Free", "100 Free", "200 Free", "400/500 Free", "800/1000 Free", "1500/1650 Free", "50 Back", "100 Back", "200 Back", "50 Breast", "100 Breast", "200 Breast", "50 Fly", "100 Fly", "200 Fly", "200 IM", "400 IM"]
    let courses = ["SCY", "LCM", "SCM"]
    
    var body: some View {
        VStack {
            Text("Enter New Time")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            // Date picker for selecting the race date
            DatePicker("Date", selection: $date, displayedComponents: [.date])
                .frame(width: 200)
                .padding()
            
            // Text field for entering the race time
            TextField("Enter Time", text: $time)
                .frame(width: 200)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Picker for selecting the race event
            Picker("Select an event", selection: $event) {
                ForEach(events, id: \.self) { eventName in
                    Text(eventName)
                }
            }
            .frame(width: 200)
            .border(Color.blue)
            .pickerStyle(.menu)
            .padding()
            
            HStack {
                // Picker for selecting the race course
                Picker("", selection: $course) {
                    ForEach(courses, id: \.self) { courseName in
                        Text(courseName)
                    }
                }
                .frame(width: 200)
                .padding(.leading, 40)
                .pickerStyle(SegmentedPickerStyle())
                
                // Information button
                Button(action: {
                    showCourseInfo.toggle()
                }) {
                    Image(systemName: "info.circle")
                        .foregroundColor(.blue)
                }
                .padding(.leading, 10)
                .popover(isPresented: $showCourseInfo) {
                    CoursePopup()
                }
            }
            .padding()
            
            // Button to save the entered race data and go back to main menu
            Button(action: {
                saveRace()
                showMainMenu = true // Navigate to main menu
            }) {
                Text("Save Race and Go Back to Main Menu")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            .sheet(isPresented: $showMainMenu) {
                MainMenu()
            }
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

// Popup struct
struct CoursePopup: View {
    var body: some View {
        VStack {
            Text("Select the course of the race:")
                .font(.headline)
                .padding()
            Text("SCY - Short course yards (25 yard pool)")
                .frame(alignment: .center)
                .padding()
            Text("LCM - Long course meters (50 meter pool)")
                .frame(alignment: .center)
                .padding()
            Text("SCM - Short course meters (25 meter pool)")
                .frame(alignment: .center)
                .padding()
        }
        .frame(width: 400, height: 300)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

// Preview struct
struct NewTimeView_Previews: PreviewProvider {
    static var previews: some View {
        NewTimeView()
    }
}
