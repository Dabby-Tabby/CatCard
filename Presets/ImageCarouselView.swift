import SwiftUI
import Combine

struct ImageCarouselView: View {
    // The current page being displayed in the carousel
    @State private var currentPage = 0
    
    // Array of image names to display in the carousel
    let images: [String]
    
    // Time interval for the auto-scrolling timer
    let timerInterval: TimeInterval
    
    var body: some View {
        VStack {
            // TabView for displaying the images in a carousel format
            TabView(selection: $currentPage) {
                // Loop through the images array and display each image
                ForEach(0..<images.count, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 380, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 8)
                        )
                        .shadow(
                            color: Color.primary.opacity(0.9),
                            radius: 7
                        )
                        .tag(index) // Tag for identifying the current image in the TabView
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)) // Enable pagination dots
            .frame(width: 380, height: 200)
            .cornerRadius(10)
            .padding([.leading, .trailing], 10)
            .onReceive(timer) { _ in
                withAnimation {
                    // Auto-scroll to the next image when the timer fires
                    currentPage = (currentPage + 1) % images.count
                }
            }
        }
    }
    
    // Timer publisher that triggers an event at the specified interval
    private var timer: Publishers.Autoconnect<Timer.TimerPublisher> {
        Timer.publish(every: timerInterval, on: .main, in: .common).autoconnect()
    }
}

#Preview {
    HomeView()
}
