//
//  ContentView.swift
//  Swimming App
//
//  Created by Jared Rabadam on 3/20/24.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        
        VStack {
            if (self.isActive) {
                MainMenu()
            } else {
                ZStack {
                    Image("loadingImg")
                        .scaleEffect(CGSize(width: 0.8, height: 0.9))
                    
                    Rectangle()
                        .fill(Color.white)
                        .frame(height: 120)
                        .edgesIgnoringSafeArea(.horizontal)
                        .offset(y: -170)
                        .opacity(0.5)
                    
                    Text("Swim Tracker")
                        .font(.system(size: 60))
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .offset(y: -170)
                        .shadow(color: .white, radius: 1, x: 1, y: 2)
                    
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                        
                    }
                }
            }
        }
        
    }
    
}

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

struct NewTimeView: View {
    
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
        
        Text("Emter New Time")
        
        DatePicker(
            "Date",
            selection: $date,
            displayedComponents: [.date]
        )
        
        TextField("Enter Time", text: $time)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        
        Picker("Select an event", selection: $event) {
            ForEach(events, id: \.self) { eventName in
                Text(eventName)
            }
        }
        .pickerStyle(.menu)
        
        Picker("Select an event", selection: $course) {
            ForEach(courses, id: \.self) { courseName in
                Text(courseName)
            }
        }
        .pickerStyle(.menu)
        
        
        
    }
}

struct AllTimesView: View {
    var body: some View {
        Text("view all times")
    }
}

struct CompareView: View {
    var body: some View {
        Text("compare table or graph")
    }
}

struct TimeStandardsView: View {
    var body: some View {
        Text("time standards")
        Link("Learn SwiftUI", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui")!)
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

#Preview {
    SplashView()
}
