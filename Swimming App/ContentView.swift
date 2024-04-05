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
            List {
                NavigationLink(destination: NewTimeView()) {
                    Text("Enter New Time")
                }
                NavigationLink(destination: NewTimeView()) {
                    Text("View All Times")
                }
                NavigationLink(destination: NewTimeView()) {
                    Text("Comparisons")
                }
                NavigationLink(destination: NewTimeView()) {
                    Text("Time Standards")
                }
               
            }
        }
}

struct NewTimeView: View {
    var body: some View {
        Text("enter new time")
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
