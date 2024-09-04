//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct ManagingOverweightCats: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Assess the Weight")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Determine if your cat is overweight by checking their body condition. You should be able to feel their ribs without pressing too hard and see a noticeable waist.")
                            .foregroundColor(.black)
                        
                        Text("2. Consult Your Vet")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Before starting a weight loss plan, consult your vet to rule out any underlying health issues and to get a tailored weight loss plan for your cat.")
                            .foregroundColor(.black)
                        
                        Text("3. Adjust the Diet")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Switch to a weight management cat food that is lower in calories but still provides essential nutrients. Follow feeding guidelines to avoid overfeeding.")
                            .foregroundColor(.black)
                        
                        Text("4. Control Portions")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Measure your cat's food to ensure they are not eating more than they should. Avoid free-feeding and stick to scheduled feeding times.")
                            .foregroundColor(.black)
                        
                        Text("5. Increase Activity")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Encourage exercise through interactive toys and playtime. Regular activity helps burn calories and keeps your cat healthy and happy.")
                            .foregroundColor(.black)
                        
                        Text("6. Monitor Progress")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Track your cat's weight loss progress by regular weigh-ins. Adjust the diet and exercise plan as needed based on their progress.")
                            .foregroundColor(.black)
                        
                        Text("7. Avoid Quick Fixes")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Avoid extreme calorie restrictions or fad diets, which can be harmful. A gradual, steady weight loss is safer and more sustainable for your cat.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Managing Overweight Cats", displayMode: .inline)
    }
}

#Preview {
    ManagingOverweightCats()
}
