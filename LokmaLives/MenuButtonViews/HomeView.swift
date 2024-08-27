import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Diagonal gradient background
                LinearGradient(
                    gradient: Gradient(colors: [.teal, .white]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all) // Ensure the gradient covers the entire screen

                VStack {
                    HStack {
                        Image("ProfilePicture")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 130)
                            .clipShape(Circle()) // Make the image circular
                            .overlay(
                                Circle() // Add a circular border
                                    .stroke(Color.white, lineWidth: 4) // Adjust the border width as needed
                            )
                            .shadow(
                                color: Color.primary.opacity(0.3), /// shadow color
                                radius: 8 /// shadow radius
                            )
                            .padding(.top, 25)
                            .offset(x: -5)
                        VStack {
                            Text("Lokma")
                                .font(Font.custom("Raleway-Regular", size: 42)) // Adjust the font size and weight
                                .foregroundColor(.white)
                                .opacity(0.85)
                                .offset(x: -13)
                                
                                .shadow(
                                    color: Color.primary.opacity(0.5), /// shadow color
                                    radius: 3, /// shadow radius
                                    x: 2, /// x offset
                                    y: 2 /// y offset
                                )
                            Text("Male, Orange Tabby")
                                .font(Font.custom("Raleway-Regular", size: 19)) // Adjust the font size and weight
                                .foregroundColor(.white)
                                .opacity(0.85)
                                .offset(x: 10, y: 5)
                                .shadow(
                                    color: Color.primary.opacity(0.5), /// shadow color
                                    radius: 3, /// shadow radius
                                    x: 2, /// x offset
                                    y: 2 /// y offset
                                )
                            Text("19 months, 03/31/23")
                                .font(Font.custom("Raleway-Regular", size: 19))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .opacity(0.85)
                                .offset(x: 13.5, y: 12)
                                .shadow(
                                    color: Color.primary.opacity(0.5), /// shadow color
                                    radius: 3, /// shadow radius
                                    x: 2, /// x offset
                                    y: 2 /// y offset
                                )
                            
                        }
                    }
                    
                    .padding(.bottom, 5) // Adjust the bottom padding if needed
                    ImageCarouselView(images: ["Lokma1", "Lokma2", "Lokma3"], timerInterval: 5)
                                   .padding()
                    Link(destination: URL(string: "https://www.amazon.com/Meow-Mix-Original-Dry-Food/dp/B007JXVR76/ref=sr_1_5?dib=eyJ2IjoiMSJ9.Us5bv14bm6vJ1odukzKqh0LgkAoytC0O5dz5YhgfnOHJnRoFA9v2r1VAWJx6ijYXaU9EQijVdlrm9R1mPhzhksvmkipDV_ch5MHaE5Iya2LRScFFCzXFkClPYO-6hDE57BtHRckIMFyrCIKNpQRNpPjd14kbtkgVu2AkMLoVgWHiFO4e-iltFpsHRAs6zwoVxO7J8846TH7N_peTJvRPfMa3xEBRUK_wE2Lcub2QJilCTSJzn3521ZCUyhKc-kjD0zKZcMAPCU9ljiW5SwF2x-DLAv9C83DmG_oJgZ4NrNw.HZCH7oXIlMm7IIHp1rBYuIg-lmLxQhuSCiV5thhpN8k&dib_tag=se&keywords=cat+food&qid=1724634033&rdc=1&sr=8-5")!) {
                        Image("FavoriteFoodIcon") // Replace with the name of your image asset
                            .resizable()
                            .aspectRatio(contentMode: .fill) // Ensures the image fills the frame
                            .frame(width: 375.0, height: 120.0)
                            .clipped() // Ensures any part of the image outside the frame is clipped
                            .shadow(
                                color: Color.primary.opacity(0.5), /// shadow color
                                radius: 3, /// shadow radius
                                x: 2, /// x offset
                                y: 2 /// y offset
                            )
                            .background(Color.teal)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 4) // Add white border
                            )
                    }
                    .padding(.bottom, 6.0)

                    Link(destination: URL(string: "https://www.amazon.com/Feather-Retractable-Assorted-Interactive-Exerciser/dp/B07F45GGPT/ref=sr_1_5?dib=eyJ2IjoiMSJ9.3dMAuv5wUAHv5K_sFtwlVdwCBK7zEfn8FWJjGFLXKiEZUkJ7F-mOnbvInQxsCwWEDVRfYoVEMOWedvUVyd1Xw49UXHzp965Lrx3bwFqmcbPOPcWPagrQllPm6n_iREy2MVYDg-DztQuM_AiL27XGYCR4ZsKjc2Bqnlh3Y-YeGSrmZUBzvrwWKzhlgjpz64NSZ__Uqo5csi6_L6Hz_2727_rE7pnx0nFMNWVOVxEIncNdFsanzy_Fm89EV-8U1X17giPUU_L2jds-bTN9ACbyDdH_h-mk-iGMb3MAh1HYJoU.gqY91cihF3eEwksYsXYApkgrPXqOvc7QF6GWjpqQSk8&dib_tag=se&keywords=cat+toys&qid=1724634482&sr=8-5")!) {
                        Image("FavoriteToyIcon") // Replace with the name of your image asset
                            .resizable()
                            .aspectRatio(contentMode: .fill) // Ensures the image fills the frame
                            .frame(width: 375.0, height: 120.0)
                            .clipped() // Ensures any part of the image outside the frame is clipped
                            .shadow(
                                color: Color.primary.opacity(0.5), /// shadow color
                                radius: 3, /// shadow radius
                                x: 2, /// x offset
                                y: 2 /// y offset
                            )
                            .background(Color.teal)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 4) // Add white border
                            )
                    }

                    Spacer()
                }
            }
        }
        
    }
}

#Preview {
    MainView()
}
