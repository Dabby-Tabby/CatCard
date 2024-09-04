//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct LitterboxPreparing: View {
    var body: some View {
        ZStack {
         //   Color("BeautifulBlue")
        //        .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                // Title for the view
             //   Text("Preparing Your Home for a Cat")
              //      .font(Font.custom("Raleway-Bold", size: 28))
              //      .foregroundColor(.black)
              //      .padding(.top, 20)

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Designate a Safe Space")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Create a quiet and comfortable area where your cat can relax and feel secure. Cats can get stressed in new environments, so having a safe zone is important.")
                            .foregroundColor(.black)
                        
                        Text("2. Prepare Litter Box")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Make sure to have a litter box placed in a quiet and accessible location. Clean the box daily to keep your cat comfortable and encourage good habits.")
                            .foregroundColor(.black)
                        
                        Text("3. Gather Essential Supplies")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Have essentials ready such as food, water bowls, a scratching post, toys, and a bed to make your new cat feel welcome.")
                            .foregroundColor(.black)
                        
                        Text("4. Cat-proof Your Home")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Remove hazards like small objects, poisonous plants, and ensure your windows and doors are secure.")
                            .foregroundColor(.black)
                        
                        Text("5. Set Up Scratching Areas")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Provide scratching posts or pads to prevent your cat from scratching furniture. Cats need to scratch to maintain healthy claws.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Preparing Your Home", displayMode: .inline)
    }
}
