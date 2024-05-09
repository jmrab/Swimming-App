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
            .aspectRatio(contentMode: .fit)
    }
}

struct DistrictsImage: View {
    var body: some View {
        Image("districts")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct StatesImage: View {
    var body: some View {
        Image("state")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct FuturesImage: View {
    var body: some View {
        Image("futures")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct JNATImage: View {
    var body: some View {
        Image("jnat times")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct WinterJNATImage: View {
    var body: some View {
        Image("winter jn ats")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct OlympicImage: View {
    var body: some View {
        Image("trials times")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
