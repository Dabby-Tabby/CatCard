//
//  CatCareTipsTemplate.swift
//  LokmaLives
//
//  Created by Nick Watts on 9/4/24.
//

import SwiftUI

struct MobilityAndJointHealth: View {
    var body: some View {
        ZStack {

            VStack(alignment: .leading, spacing: 20) {

                // Scrollable list of tips
                ScrollView {
                    VStack(alignment: .leading, spacing: 15) {
                        Text("1. Recognize Signs of Joint Pain")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Look for signs of joint pain such as limping, difficulty jumping, or reluctance to move. If your cat shows these symptoms, consult your vet for a proper diagnosis.")
                            .foregroundColor(.black)
                        
                        Text("2. Provide a Comfortable Sleeping Area")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Ensure your cat has a soft, supportive bed to reduce pressure on their joints. Orthopedic beds can help alleviate discomfort and improve sleep quality.")
                            .foregroundColor(.black)
                        
                        Text("3. Maintain a Healthy Weight")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Obesity can exacerbate joint issues. Feed your cat a balanced diet and monitor their weight to prevent excess strain on their joints.")
                            .foregroundColor(.black)
                        
                        Text("4. Encourage Gentle Exercise")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Encourage gentle exercise to maintain joint flexibility and muscle strength. Short, low-impact play sessions are beneficial without overstraining your cat.")
                            .foregroundColor(.black)
                        
                        Text("5. Use Joint Supplements")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Consider joint supplements like glucosamine and chondroitin, which may support joint health. Consult your vet before starting any new supplements.")
                            .foregroundColor(.black)
                        
                        Text("6. Provide Easy Access to Essentials")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Ensure food, water, and litter boxes are easily accessible to avoid unnecessary strain on your cat's joints. Place them in convenient locations to reduce movement.")
                            .foregroundColor(.black)
                        
                        Text("7. Regular Vet Check-ups")
                            .font(Font.custom("Raleway-Bold", size: 20))
                            .foregroundColor(.black)
                        Text("Schedule regular vet visits to monitor your cat's joint health and adjust their care plan as needed. Early intervention can prevent further joint issues.")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitle("Mobility and Joint Health", displayMode: .inline)
    }
}

#Preview {
    MobilityAndJointHealth()
}
