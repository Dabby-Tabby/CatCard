import SwiftUI
import MapKit

/// View that displays the current location of the user and a marker for their cat.
struct FindMyCatView: View {
    
    /// State object to manage location updates.
    @StateObject private var locationManager = LocationManager()
    
    /// State variable to control the map's zoom level.
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    var body: some View {
        ZStack {
            // Background color for the entire view
            Color.teal
                .opacity(0.15)
                .ignoresSafeArea()
            
            if let location = locationManager.location {
                // Convert CLLocation to IdentifiableLocation for annotation
                let identifiableLocation = IdentifiableLocation(coordinate: location)
                
                // Map view showing user's location with a custom annotation
                Map(coordinateRegion: $region, annotationItems: [identifiableLocation]) { location in
                    MapAnnotation(coordinate: location.coordinate) {
                        GeometryReader { geometry in
                            ZStack {
                                // Red circle background for the annotation
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: geometry.size.width * 5.5, height: geometry.size.height * 5.5)
                                    .opacity(0.8)
                                
                                VStack {
                                    // Cat icon with orange color
                                    Image(systemName: "cat.fill")
                                        .foregroundColor(.orange)
                                    // Label for the annotation
                                    Text("Lokma")
                                        .font(.caption)
                                        .bold()
                                        .foregroundColor(.white)
                                }
                            }
                            .frame(width: 76.608, height: 30.0) // Custom size for annotation view
                        }
                    }
                }
                .edgesIgnoringSafeArea(.top) // Ensure the map fills the entire screen
                .onAppear {
                    // Update the region when the view appears
                    region = MKCoordinateRegion(
                        center: location,
                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                    )
                }
            } else {
                // Placeholder text while location is being fetched
                Text("Getting your location...")
                    .font(Font.custom("Raleway-Bold", size: 23))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.teal.opacity(0.15)) // Matches map background color
            }
        }
        .navigationTitle("FindMyCat") // Title for the navigation bar
    }
}

#Preview {
    FindMyCatView()
}
