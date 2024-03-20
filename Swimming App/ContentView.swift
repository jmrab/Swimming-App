//
//  ContentView.swift
//  Swimming App
//
//  Created by Jared Rabadam on 3/20/24.
//

import SwiftUI

struct GreetingScreen: View {
    var body: some View {
        ZStack {
            Image("1234")
                .scaleEffect(CGSize(width: 0.8, height: 0.9))
            Rectangle()
                .fill(Color.gray)
                .frame(width: 330, height: 90)
                .opacity(0.7)

            Text("Swim Tracker")
                .font(.system(size: 48))
                .foregroundColor(.white)
            
            
        }
        .padding()
    }
}

#Preview {
    GreetingScreen()
}
