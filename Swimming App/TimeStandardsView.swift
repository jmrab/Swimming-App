import SwiftUI

struct TimeStandardsView: View {
    var body: some View {
        NavigationView {
            // Navigation List of time standards
            List {
                NavigationLink(destination: SectionalsImage()) {
                    Text("OHSAA Sectionals")
                }
                NavigationLink(destination: DistrictsImage()) {
                    Text("OHSAA Districts")
                }
                NavigationLink(destination: StatesImage()) {
                    Text("OHSAA States")
                }
                NavigationLink(destination: FuturesImage()) {
                    Text("USA Futures")
                }
                NavigationLink(destination: JNATImage()) {
                    Text("USA Junior Nationals")
                }
                NavigationLink(destination: WinterJNATImage()) {
                    Text("USA Winter Junior Nationals")
                }
                NavigationLink(destination: OlympicImage()) {
                    Text("Olympic Trials")
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
