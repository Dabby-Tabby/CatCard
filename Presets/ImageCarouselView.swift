import SwiftUI
import Combine

struct ImageCarouselView: View {
    @State private var currentPage = 0
    let images: [String]
    let timerInterval: TimeInterval
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                ForEach(0..<images.count, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: 380, height: 200) // Ensure a consistent height
                        .clipShape(RoundedRectangle(cornerRadius: 10)) // Clip to a rounded rectangle
                        .overlay(
                            RoundedRectangle(cornerRadius: 10) // Add a matching border
                                .stroke(Color.white, lineWidth: 8) // White border with width 4
                        )
                        .shadow(
                            color: Color.primary.opacity(0.9), /// shadow color
                            radius: 7 /// shadow radius
                        )
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(width: 380, height: 200)
            .cornerRadius(10)
            .padding([.leading, .trailing], 10)
            .onReceive(timer) { _ in
                withAnimation {
                    currentPage = (currentPage + 1) % images.count
                }
            }
        }
    }
    
    private var timer: Publishers.Autoconnect<Timer.TimerPublisher> {
        Timer.publish(every: timerInterval, on: .main, in: .common).autoconnect()
    }
}
#Preview {
    HomeView()
}
