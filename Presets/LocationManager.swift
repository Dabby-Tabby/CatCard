// Using code and ideas from https://medium.com/@desilio/getting-user-location-with-swiftui-1f79d23c2321

import CoreLocation
import Combine

/// Manages location updates and provides the current location to subscribed views.
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    // CLLocationManager instance to handle location updates.
    private let locationManager = CLLocationManager()
    
    /// Published property to broadcast location updates to the view.
    @Published var location: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        // Set the delegate to self to handle location updates.
        self.locationManager.delegate = self
        // Request permission to access location when the app is in use.
        self.locationManager.requestWhenInUseAuthorization()
        // Start receiving location updates.
        self.locationManager.startUpdatingLocation()
    }
    
    // CLLocationManagerDelegate method called when new location data is available.
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.last else { return }
        self.location = latestLocation.coordinate
    }
}

/// Represents a location with a unique identifier, used for map annotations.
struct IdentifiableLocation: Identifiable {
    let id = UUID()
    // Coordinates of the location.
    let coordinate: CLLocationCoordinate2D
}
