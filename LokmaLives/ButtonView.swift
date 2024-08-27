import SwiftUI

struct ButtonView: View {
    var label: String
    let backgroundImage: String
    
    var body: some View {
        ZStack {
            Image(backgroundImage) // Use the image as the background
                .resizable()
                .aspectRatio(contentMode: .fill) // Ensures image covers the frame
                .frame(width: 350, height: 90)
                .clipped() // Crops any part of the image outside the frame
                .blur(radius: 5.5)
            
            Text(label)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .opacity(0.9)
        }
        .frame(width: 350, height: 90)
        .cornerRadius(17)
        .shadow(color: .black, radius: 5, x: 2, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 17)
                .stroke(Color.white, lineWidth: 2)
        )
    }
}
