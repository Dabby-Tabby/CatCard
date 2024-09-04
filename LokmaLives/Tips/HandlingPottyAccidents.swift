//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct HandlingPottyAccidents: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Stay Calm and Patient")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("If your cat has an accident, avoid punishing them. Cats don’t associate punishment with the accident and it can create stress, leading to more accidents.")
                            .foregroundColor(.black)
                        
                        Text("2. Clean the Area Thoroughly")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Use an enzymatic cleaner to eliminate any odor. Cats may return to the same spot if they can still smell their scent, so thorough cleaning is key.")
                            .foregroundColor(.black)
                        
                        Text("3. Check the Litter Box")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Make sure the litter box is clean, accessible, and in a quiet location. A dirty or inconvenient litter box is a common reason for accidents.")
                            .foregroundColor(.black)
                        
                        Text("4. Look for Underlying Health Issues")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Potty accidents can sometimes signal health problems like urinary tract infections or digestive issues. If accidents persist, consult your vet.")
                            .foregroundColor(.black)
                        
                        Text("5. Stress or Environmental Changes")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Cats are sensitive to changes, and stress can lead to accidents. Consider if there have been changes in your home, like a new pet, moving, or changes in routine.")
                            .foregroundColor(.black)
                        
                        Text("6. Reintroduce Litter Training")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("If accidents are frequent, you may need to reintroduce litter training. Show your cat where the box is and reward them when they use it.")
                            .foregroundColor(.black)
                        
                        Text("7. Provide Multiple Litter Boxes")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("If you have a large house or multiple cats, consider adding extra litter boxes to different areas. A good rule is one litter box per cat, plus one extra.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Handling Potty Accidents", displayMode: .inline)
    }
}

#Preview {
    HandlingPottyAccidents()
}
