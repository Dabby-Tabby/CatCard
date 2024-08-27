import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Diagonal gradient background
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .orange]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all) // Ensure the gradient covers the entire screen

                VStack {
                    Image("ProfilePicture")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle()) // Make the image circular
                        .overlay(
                            Circle() // Add a circular border
                                .stroke(Color.white, lineWidth: 4) // Adjust the border width as needed
                        )
                        .padding(.top, 25)
                    Text("💞 Lokma 💞")
                        .font(.system(size: 40, weight: .bold)) // Adjust the font size and weight
                        .foregroundColor(.white)
                        .opacity(0.7)
                    
                    Spacer()
                    
                    VStack {
                        NavigationLink(destination: HomeView()) {
                            ButtonView(label: "Pet Profile", backgroundImage: "BackgroundImage1")
                                .opacity(0.90)
                                .padding(7)
                        }
                        NavigationLink(destination: VetVaultView()) {
                            ButtonView(label: "Vet Vault", backgroundImage: "BackgroundImage2")
                                .opacity(0.90)
                                .padding(7)
                        }
                        NavigationLink(destination: FindMyCatView()) {
                            ButtonView(label: "Find My Cat", backgroundImage: "BackgroundImage3")
                                .opacity(0.90)
                                .padding(7)
                        }
                        NavigationLink(destination: CatCareTipsView()) {
                            ButtonView(label: "Cat Care Tips", backgroundImage: "BackgroundImage4")
                                .opacity(0.90)
                                .padding(7)
                        }
                    }
                    .padding(.bottom, 5) // Adjust the bottom padding if needed
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
