import SwiftUI
import MapKit

struct MainView: View {
    var body: some View {
        // TabView for managing the main navigation between different sections of the app
        TabView {
            // HomeView for displaying the user's profile
            HomeView()
                .tabItem {
                    Label("Profile", systemImage: "house")
                }

            // VetVaultView for storing and managing veterinary records
            VetVaultView()
                .tabItem {
                    Label("Vet Vault", systemImage: "folder.fill")
                }
            
            // FindMyCatView for locating the user's cat
            FindMyCatView()
                .tabItem {
                    Label("Find My Cat", systemImage: "magnifyingglass")
                }
            
            // CatCareTipsView for displaying tips and advice on cat care
            CatCareTipsView()
                .tabItem {
                    Label("Tips", systemImage: "questionmark.app.fill")
                }
        }
        .accentColor(.teal)
    }
}

#Preview {
    MainView()
}
