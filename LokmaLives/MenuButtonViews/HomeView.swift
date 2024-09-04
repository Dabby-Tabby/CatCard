import SwiftUI
import PhotosUI

struct HomeView: View {
    @State private var catName: String = "Lokma"
    @State private var catGenderBreed: String = "Male, Orange Tabby"
    @State private var catAge: String = "19 months, 03/31/23"
    
    @State private var selectedImage: UIImage? // Add this state variable
    @State private var isPickerPresented: Bool = false // Add this state variable to manage the picker presentation
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color("GradientTeal"), Color("GradientWhite")]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)

                VStack {
                    HStack {
                        // Profile picture with tap gesture to change the image
                        Image(uiImage: selectedImage ?? UIImage(named: "ProfilePicture")!)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 130)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 4)
                            )
                            .shadow(
                                color: Color.primary.opacity(0.3),
                                radius: 8
                            )
                            .padding(.top, 25)
                            .offset(x: 50)
                            .onTapGesture {
                                isPickerPresented = true // Show the image picker
                            }

                        VStack {
                            TextField("Cat", text: $catName)
                                .font(Font.custom("Raleway-Regular", size: 42))
                                .foregroundColor(.white)
                                .opacity(0.85)
                                .offset(x: 65)
                                .shadow(
                                    color: Color.primary.opacity(0.5),
                                    radius: 3,
                                    x: 2,
                                    y: 2
                                )
                            
                            TextField("Gender, Breed", text: $catGenderBreed)
                                .font(Font.custom("Raleway-Regular", size: 19))
                                .foregroundColor(.white)
                                .opacity(0.85)
                                .offset(x: 67.5, y: 5)
                                .shadow(
                                    color: Color.primary.opacity(0.5),
                                    radius: 3,
                                    x: 0,
                                    y: 2
                                )
                                
                            TextField("Age, Date of Birth", text: $catAge)
                                .font(Font.custom("Raleway-Regular", size: 19))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .opacity(0.85)
                                .offset(x: 67.5, y: 4)
                                .shadow(
                                    color: Color.primary.opacity(0.5),
                                    radius: 3,
                                    x: 2,
                                    y: 2
                                )
                        }
                    }
                    .padding(.bottom, 5)

                    ImageCarouselView(images: ["Lokma1", "Lokma2", "Lokma3"], timerInterval: 5)
                        .padding()

                    Link(destination: URL(string: "https://www.amazon.com/Meow-Mix-Original-Dry-Food/dp/B007JXVR76")!) {
                        Image("FavoriteFoodForest")
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

                    Link(destination: URL(string: "https://www.amazon.com/Feather-Retractable-Assorted-Interactive-Exerciser/dp/B07F45GGPT")!) {
                        Image("FavoriteToyIcon")
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

                    Spacer()
                }
            }
            .sheet(isPresented: $isPickerPresented) {
                ProfilePicturePicker(selectedImage: $selectedImage) // Present the image picker
            }
        }
    }
}


#Preview {
    HomeView()
}
