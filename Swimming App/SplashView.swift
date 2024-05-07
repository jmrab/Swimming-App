import SwiftUI

struct SplashView: View {
    // State property to track if the splash screen should transition
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            // If isActive is true, show the MainMenu
            if (self.isActive) {
                MainMenu()
            } else {
                // Show the loading screen
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
                // When the view appears, set isActive to true after a delay
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

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
