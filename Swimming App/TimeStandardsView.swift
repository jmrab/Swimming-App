import SwiftUI

struct TimeStandardsView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SectionalsImage()) {
                    Text("Sectionals")
                }
                NavigationLink(destination: DistrictsImage()) {
                    Text("Districts")
                }
                NavigationLink(destination: StatesImage()) {
                    Text("States")
                }
                NavigationLink(destination: FuturesImage()) {
                    Text("Futures")
                }
                NavigationLink(destination: JNATImage()) {
                    Text("Junior Nationals")
                }
                NavigationLink(destination: WinterJNATImage()) {
                    Text("Winter Junior Nationals")
                }
                NavigationLink(destination: OlympicImage()) {
                    Text("Olympic")
                }
            }
            .navigationTitle("Time Standards")
        }
    }
}

struct SectionalsImage: View {
    var body: some View {
        Image("sectionals")
            .resizable()
    }
}

struct DistrictsImage: View {
    var body: some View {
        Image("districts")
            .resizable()
    }
}

struct StatesImage: View {
    var body: some View {
        Image("state")
            .resizable()
    }
}

struct FuturesImage: View {
    var body: some View {
        Image("futures")
            .resizable()
    }
}

struct JNATImage: View {
    var body: some View {
        Image("jnat times")
            .resizable()
    }
}

struct WinterJNATImage: View {
    var body: some View {
        Image("winter jn ats")
            .resizable()
    }
}

struct OlympicImage: View {
    var body: some View {
        Image("trials times")
            .resizable()
    }
}
