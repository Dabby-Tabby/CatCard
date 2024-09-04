//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct TrainingKitAdu: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Kittens Learn Quickly")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Kittens are curious and tend to learn faster as they’re constantly exploring their environment. Start training early to instill good habits from the start.")
                            .foregroundColor(.black)
                        
                        Text("2. Adult Cats Can Be Trained")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("While training an adult cat may take more patience, it’s definitely possible. Adult cats can learn new behaviors or unlearn bad habits, but progress may be slower than with kittens.")
                            .foregroundColor(.black)
                        
                        Text("3. Positive Reinforcement")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Use treats, toys, and praise to reinforce good behavior. Whether you’re training a kitten or an adult, positive reinforcement is the most effective training method.")
                            .foregroundColor(.black)
                        
                        Text("4. Litter Box Training")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Kittens usually pick up litter box training quickly, as they naturally want to bury their waste. Adult cats may need some guidance, especially if they’ve never been trained or have had bad experiences.")
                            .foregroundColor(.black)
                        
                        Text("5. Patience with Adult Cats")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Older cats may take longer to adjust to new rules or routines. Consistency and patience are key when training adult cats, particularly those who have ingrained habits.")
                            .foregroundColor(.black)
                        
                        Text("6. Play and Exercise")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Kittens are full of energy and need plenty of playtime to burn off their excitement. Adult cats still need play, but they may prefer more relaxed, structured play sessions.")
                            .foregroundColor(.black)
                        
                        Text("7. Crate Training for Travel")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Both kittens and adult cats can be crate trained for safer travel. Introduce them to the crate gradually, using treats and comfort items to make the crate a positive space.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Training Kittens vs Adults", displayMode: .inline)
    }
}

#Preview {
    TrainingKitAdu()
}
