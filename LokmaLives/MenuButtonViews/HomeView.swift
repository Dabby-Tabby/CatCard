import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Diagonal gradient background from top-left to bottom-right
                LinearGradient(
                    gradient: Gradient(colors: [.teal, .white]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)

                VStack {
                    // HStack containing the profile picture and cat details
                    HStack {
                        Image("ProfilePicture")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 130)
                            .clipShape(Circle()) // Circular profile picture
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 4)
                            )
                            .shadow(
                                color: Color.primary.opacity(0.3),
                                radius: 8
                            )
                            .padding(.top, 25)
                            .offset(x: -5)

                        // VStack containing cat's name, breed, and age details
                        VStack {
                            Text("Lokma")
                                .font(Font.custom("Raleway-Regular", size: 42))
                                .foregroundColor(.white)
                                .opacity(0.85)
                                .offset(x: -13)
                                .shadow(
                                    color: Color.primary.opacity(0.5),
                                    radius: 3,
                                    x: 2,
                                    y: 2
                                )
                            Text("Male, Orange Tabby")
                                .font(Font.custom("Raleway-Regular", size: 19))
                                .foregroundColor(.white)
                                .opacity(0.85)
                                .offset(x: 10, y: 5)
                                .shadow(
                                    color: Color.primary.opacity(0.5),
                                    radius: 3,
                                    x: 2,
                                    y: 2
                                )
                            Text("19 months, 03/31/23")
                                .font(Font.custom("Raleway-Regular", size: 19))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .opacity(0.85)
                                .offset(x: 13.5, y: 12)
                                .shadow(
                                    color: Color.primary.opacity(0.5),
                                    radius: 3,
                                    x: 2,
                                    y: 2
                                )
                        }
                    }
                    .padding(.bottom, 5)

                    // ImageCarouselView for displaying a carousel of cat images
                    ImageCarouselView(images: ["Lokma1", "Lokma2", "Lokma3"], timerInterval: 5)
                        .padding()

                    // Link to the cat's favorite food on Amazon
                    Link(destination: URL(string: "https://www.amazon.com/Meow-Mix-Original-Dry-Food/dp/B007JXVR76")!) {
                        Image("FavoriteFoodIcon") // Placeholder for the food image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 375.0, height: 120.0)
                            .clipped()
                            .shadow(
                                color: Color.primary.opacity(0.5),
                                radius: 3,
                                x: 2,
                                y: 2
                            )
                            .background(Color.teal)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 4)
                            )
                    }
                    .padding(.bottom, 6.0)

                    // Link to the cat's favorite toy on Amazon
                    Link(destination: URL(string: "https://www.amazon.com/Feather-Retractable-Assorted-Interactive-Exerciser/dp/B07F45GGPT")!) {
                        Image("FavoriteToyIcon") // Placeholder for the toy image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 375.0, height: 120.0)
                            .clipped()
                            .shadow(
                                color: Color.primary.opacity(0.5),
                                radius: 3,
                                x: 2,
                                y: 2
                            )
                            .background(Color.teal)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 4)
                            )
                    }

                    Spacer() // Pushes content to the top
                }
            }
        }
    }
}

#Preview {
    MainView()
}
