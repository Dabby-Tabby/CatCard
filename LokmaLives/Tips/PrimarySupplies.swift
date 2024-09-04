//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct PrimarySupplies: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {
   
                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Food and Water Bowls")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Choose stainless steel or ceramic bowls, as they're easier to clean and don't harbor bacteria like plastic. Keep the bowls in separate areas as cats prefer them apart.")
                            .foregroundColor(.black)
                        
                        Text("2. Cat Food")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Ensure you get age-appropriate food (kitten, adult, or senior). Options include dry kibble, wet food, or a mix of both. Consult with a vet to determine the best diet for your cat.")
                            .foregroundColor(.black)
                        
                        Text("3. Litter Box and Litter")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Choose a litter box large enough for your cat to turn around in. Place it in a quiet, accessible location. Scoop daily to keep your cat comfortable and the area odor-free.")
                            .foregroundColor(.black)
                        
                        Text("4. Scratching Post")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Provide a scratching post made of sisal or cardboard to keep your cat from scratching furniture and to maintain healthy claws.")
                            .foregroundColor(.black)
                        
                        Text("5. Cat Bed")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("A cozy cat bed placed in a quiet corner will give your cat a secure place to rest. Opt for washable materials.")
                            .foregroundColor(.black)
                        
                        Text("6. Toys")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Provide interactive toys like feather wands and solo play toys like balls to keep your cat engaged. Rotate toys to maintain interest.")
                            .foregroundColor(.black)
                        
                        Text("7. Carrier")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("A sturdy carrier is necessary for vet visits and travel. Leave the carrier open at home to help your cat get used to it.")
                            .foregroundColor(.black)
                        
                        Text("8. Grooming Supplies")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Have grooming supplies like a brush, nail clippers, and a comb ready to maintain your cat’s fur and claws.")
                            .foregroundColor(.black)
                        
                        Text("9. ID Tags and Collar")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Make sure your cat has an ID tag with your contact information, and use a breakaway collar for safety.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Primary Cat Supplies", displayMode: .inline)
    }
}

#Preview {
    PrimarySupplies()
}
