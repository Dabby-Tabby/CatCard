import SwiftUI
import MapKit

struct FindMyCatView: View {
    
    let lokmaLocation = CLLocationCoordinate2D(
        latitude: 32.982040,
        longitude: -96.786700)

    var body: some View {
        ZStack {
            Text("Find My Cat")
                .font(Font.custom("Raleway-Bold", size: 23))
            .navigationTitle("FindMyCat")
            Color.teal
                .opacity(0.15)
                .ignoresSafeArea()
            Map() {
                Marker("Lokma", systemImage: "cat.fill", coordinate: lokmaLocation)
            }
                
        }
    }
}

#Preview {
    FindMyCatView()
}
