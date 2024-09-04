//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct ChoosingCatFood: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Age-Appropriate Food")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Cats have different nutritional needs depending on their age. Choose kitten, adult, or senior food accordingly to ensure they’re getting the right nutrients.")
                            .foregroundColor(.black)
                        
                        Text("2. Wet vs Dry Food")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Wet food can help keep your cat hydrated and is often more palatable. Dry kibble helps maintain dental health and is generally more convenient for free-feeding.")
                            .foregroundColor(.black)
                        
                        Text("3. Protein-Rich Diet")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Cats are obligate carnivores, meaning they require a diet rich in animal-based proteins. Look for cat foods that list real meat as the first ingredient.")
                            .foregroundColor(.black)
                        
                        Text("4. Consider Special Dietary Needs")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Some cats may need food for specific health conditions such as weight management, allergies, or urinary tract health. Consult your vet if your cat requires a specialized diet.")
                            .foregroundColor(.black)
                        
                        Text("5. Avoid Fillers")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Avoid cat foods that list fillers like corn, wheat, or soy as the main ingredients. These ingredients don’t provide much nutritional value for cats.")
                            .foregroundColor(.black)
                        
                        Text("6. Check for Essential Nutrients")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Ensure the food contains essential nutrients like taurine, omega fatty acids, and vitamins, which are vital for your cat’s overall health and well-being.")
                            .foregroundColor(.black)
                        
                        Text("7. Introduce New Foods Gradually")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("If you’re switching your cat’s food, do so gradually over the course of a week to avoid digestive upset. Start by mixing small amounts of the new food with their current diet.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Choosing a Cat Food", displayMode: .inline)
    }
}

#Preview {
    ChoosingCatFood()
}
