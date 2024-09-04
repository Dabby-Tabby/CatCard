//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct BrushingAndFurCare: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Choose the Right Brush")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Select a brush suited to your cat's coat type. For short-haired cats, a simple brush or grooming glove works well. Long-haired cats may need a comb or slicker brush to prevent matting.")
                            .foregroundColor(.black)
                        
                        Text("2. Brush Regularly")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Regular brushing helps remove loose hair, dirt, and dander, and reduces shedding. Aim to brush your cat several times a week to keep their coat in top condition.")
                            .foregroundColor(.black)
                        
                        Text("3. Check for Mats and Tangles")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Inspect your cat's fur for mats and tangles, especially in long-haired breeds. Gently work through any knots with a comb or de-matting tool to prevent discomfort.")
                            .foregroundColor(.black)
                        
                        Text("4. Bathing Considerations")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Cats generally don’t need frequent baths, but if needed, use a cat-specific shampoo. Ensure your cat is comfortable with water, and dry them thoroughly after the bath.")
                            .foregroundColor(.black)
                        
                        Text("5. Ear and Eye Cleaning")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("While grooming, check your cat’s ears for wax buildup and clean gently with a cat-safe ear cleaner. Also, wipe around the eyes with a damp cloth to remove any discharge.")
                            .foregroundColor(.black)
                        
                        Text("6. Positive Reinforcement")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Make grooming a positive experience by offering treats and praise. Gradually get your cat used to the grooming routine, and keep sessions short and pleasant.")
                            .foregroundColor(.black)
                        
                        Text("7. Seek Professional Help if Needed")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("If your cat is difficult to groom or has severe matting, consider seeking help from a professional groomer. They can provide tips and handle more challenging grooming tasks.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Brushing and Fur Care", displayMode: .inline)
    }
}

#Preview {
    BrushingAndFurCare()
}
