//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct NailTrimmingTips: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Get the Right Tools")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Use a pair of cat-specific nail clippers or a guillotine-style trimmer. Make sure they are sharp and well-maintained to avoid splitting or crushing the nails.")
                            .foregroundColor(.black)
                        
                        Text("2. Choose the Right Time")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Trim your cat’s nails when they are calm and relaxed. After a meal or during a nap time might be the best moments to ensure they stay still.")
                            .foregroundColor(.black)
                        
                        Text("3. Familiarize Your Cat with the Process")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Before trimming, get your cat used to having their paws handled. Gently touch and press their paws to desensitize them to the process.")
                            .foregroundColor(.black)
                        
                        Text("4. Trim Gradually")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Trim a small amount of nail at a time. Avoid cutting too close to the quick, the pink area inside the nail that contains blood vessels and nerves, to prevent bleeding and pain.")
                            .foregroundColor(.black)
                        
                        Text("5. Use Treats and Praise")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Reward your cat with treats and praise during and after the nail trimming to create a positive association with the process.")
                            .foregroundColor(.black)
                        
                        Text("6. Have Styptic Powder Handy")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("In case you accidentally cut into the quick and cause bleeding, keep styptic powder on hand to stop the bleeding quickly and safely.")
                            .foregroundColor(.black)
                        
                        Text("7. Regular Maintenance")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Regular nail trims help keep your cat’s nails at a manageable length and prevent them from becoming overgrown. Aim to trim every 1-2 weeks.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Nail Trimming Tips", displayMode: .inline)
    }
}

#Preview {
    NailTrimmingTips()
}
