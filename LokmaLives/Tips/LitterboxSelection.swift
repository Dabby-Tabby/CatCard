//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct LitterboxSelection: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Size Matters")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Choose a litter box large enough for your cat to turn around and dig comfortably. It should be about 1.5 times the length of your cat from nose to tail.")
                            .foregroundColor(.black)
                        
                        Text("2. Covered vs. Uncovered")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Covered boxes offer privacy and help contain odors, but some cats prefer the openness of an uncovered box. Try both to see which your cat prefers.")
                            .foregroundColor(.black)
                        
                        Text("3. Entry Height")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Consider the entry height based on your cat's age and mobility. Older cats or kittens may have difficulty climbing into a box with high sides.")
                            .foregroundColor(.black)
                        
                        Text("4. Self-Cleaning Litter Boxes")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Self-cleaning boxes can make litter maintenance easier, but not all cats are comfortable with the noise or automatic movements. Introduce them slowly if you opt for one.")
                            .foregroundColor(.black)
                        
                        Text("5. Number of Litter Boxes")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("It's recommended to have one litter box per cat, plus one extra. Place them in quiet, easily accessible areas of the house.")
                            .foregroundColor(.black)
                        
                        Text("6. Litter Type")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Clumping litter is popular for ease of cleaning, but natural options like pine, corn, or recycled paper may be preferable for eco-conscious owners. Choose what works best for your cat's comfort and health.")
                            .foregroundColor(.black)
                        
                        Text("7. Litter Box Liners")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Liners can help with cleaning, but some cats dislike the feeling under their paws. If your cat is resistant, consider skipping the liner.")
                            .foregroundColor(.black)
                        
                        Text("8. Regular Cleaning")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Scoop the litter box at least once a day and thoroughly clean it with soap and water every week. Regular maintenance will keep your cat happy and prevent litter box avoidance.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Selecting a Litter Box", displayMode: .inline)
    }
}

#Preview {
    LitterboxSelection()
}
