//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct SpecialCare: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Regular Health Check-ups")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Older cats or those with special needs require regular health check-ups to monitor their condition and adjust care as needed. Keep up with vet appointments.")
                            .foregroundColor(.black)
                        
                        Text("2. Monitor Medication and Treatments")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Follow your vet’s instructions for administering medications and treatments. Use a pill organizer or set reminders to ensure timely administration.")
                            .foregroundColor(.black)
                        
                        Text("3. Adapt Home Environment")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Make modifications to your home to accommodate your cat’s special needs, such as ramps for mobility issues or quiet spaces for stress relief.")
                            .foregroundColor(.black)
                        
                        Text("4. Nutritional Support")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Provide a diet tailored to your cat’s specific health needs, whether for weight management, kidney support, or other conditions. Consult with your vet for the best options.")
                            .foregroundColor(.black)
                        
                        Text("5. Enhance Comfort")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Ensure your cat has a comfortable and safe place to rest, with soft bedding and easy access to food, water, and litter boxes.")
                            .foregroundColor(.black)
                        
                        Text("6. Encourage Gentle Interaction")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Be patient and gentle when interacting with a cat that has special needs. Avoid sudden movements and loud noises to reduce stress.")
                            .foregroundColor(.black)
                        
                        Text("7. Seek Specialist Advice")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("For specific conditions or complex care needs, seek advice from a veterinary specialist who can provide targeted recommendations and treatment plans.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Special Care", displayMode: .inline)
    }
}

#Preview {
    SpecialCare()
}
