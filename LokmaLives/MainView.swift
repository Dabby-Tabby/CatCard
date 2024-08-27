import SwiftUI
import MapKit

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Profile", systemImage: "house")
                }

            VetVaultView()
                .tabItem {
                    Label("Vet Vault", systemImage: "folder.fill")
                }
            FindMyCatView()
                .tabItem {
                    Label("Find My Cat", systemImage: "magnifyingglass")
                }
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
