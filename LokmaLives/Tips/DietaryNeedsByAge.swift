//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct DietaryNeedsByAge: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Kitten Nutrition")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Kittens require a diet rich in protein and fat to support their rapid growth and high energy levels. Look for kitten-formulated food that contains essential nutrients like DHA for brain development.")
                            .foregroundColor(.black)
                        
                        Text("2. Adult Cat Nutrition")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Adult cats need a balanced diet with moderate protein and fat. They benefit from food that maintains their weight and supports overall health. Ensure the food includes a good mix of vitamins and minerals.")
                            .foregroundColor(.black)
                        
                        Text("3. Senior Cat Nutrition")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Senior cats may require food with lower calories to prevent obesity, as their metabolism slows down. Foods with joint-supporting nutrients like glucosamine and chondroitin are also beneficial.")
                            .foregroundColor(.black)
                        
                        Text("4. Special Dietary Needs")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Depending on age, some cats may need special diets for health conditions such as kidney disease or diabetes. Always consult your vet to select the appropriate food for any specific health needs.")
                            .foregroundColor(.black)
                        
                        Text("5. Hydration Across Ages")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Regardless of age, keeping your cat hydrated is crucial. Wet food can help increase water intake, especially for senior cats or those prone to urinary issues.")
                            .foregroundColor(.black)
                        
                        Text("6. Avoiding Common Mistakes")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Avoid abrupt diet changes, and be cautious with treats and table scraps, which can unbalance your cat’s diet. Stick to food specifically formulated for your cat’s life stage and needs.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Dietary Needs by Age", displayMode: .inline)
    }
}

#Preview {
    DietaryNeedsByAge()
}
