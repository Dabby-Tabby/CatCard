import SwiftUI

struct CatCareTipsView: View {
    var body: some View {
        ZStack {
//          LinearGradient(
//                gradient: Gradient(colors: [.white, .yellow]),
//                startPoint: .topLeading,
//                endPoint: .bottomTrailing
//            )
//            .edgesIgnoringSafeArea(.all)
//            .opacity(0.7)
//          
            VStack {
                HStack {
                    Text("── Tips ──")
                        .font(Font.custom("Raleway-Bold", size: 38))
                        .opacity(0.78)
                }
                
                NavigationStack {
                    List {
                        Section(header: HStack {
                            Text("First Cat Basics")
                            Image(systemName: "gift.fill")
                                .foregroundColor(.red)
                                .opacity(0.85)
                        }) {
                            NavigationLink(destination: FirstCatBasicsView()) {
                                Text("Preparing Your Home for a Cat")
                            }
                            
                            NavigationLink(destination: FirstCatBasicsView()) {
                                Text("Primary Cat Supplies")
                            }
                            
                            
                        }
                        
                        Section(header: HStack {
                            Text("Potty Training")
                            Image(systemName: "toilet.fill")
                                .foregroundColor(.blue)
                                .opacity(0.85)
                        }) {
                            NavigationLink(destination: PottyTrainingView()) {
                                Text("Selecting a Litter Box")
                            }
                            
                            NavigationLink(destination: PottyTrainingView()) {
                                Text("Training Kittens vs Adults")
                            }
                            
                            NavigationLink(destination: PottyTrainingView()) {
                                Text("Handling Potty Accidents")
                            }
                        }
                        
                        Section(header: HStack {
                            Text("Diet & Nutrition")
                            Image(systemName: "fork.knife")
                                .foregroundColor(.green)
                        }) {
                            NavigationLink(destination: DietNutritionView()) {
                                Text("Choosing a Cat Food")
                            }
                            
                            NavigationLink(destination: DietNutritionView()) {
                                Text("Dietary Needs by Age")
                            }
                            
                            NavigationLink(destination: DietNutritionView()) {
                                Text("Managing Overweight Cats")
                            }
                        }
                        
                        
                        Section(header: HStack {
                            Text("Grooming")
                            Image(systemName: "comb.fill")
                                .foregroundColor(.brown)
                        }) {
                            
                            NavigationLink(destination: FirstCatBasicsView()) {
                                Text("Brushing and Fur Care")
                            }
                            
                            NavigationLink(destination: FirstCatBasicsView()) {
                                Text("Nail Trimming Tips")
                            }
                            
                            
                        }
                        
                        Section(header: HStack {
                            Text("Senior Cat Care")
                            Image(systemName: "hand.raised.fill")
                                .foregroundColor(.purple)
                        }) {
                            
                            NavigationLink(destination: FirstCatBasicsView()) {
                                Text("Mobility and Joint Health")
                            }
                            
                            NavigationLink(destination: FirstCatBasicsView()) {
                                Text("Special Care")
                            }
                            
                            
                        }

                    }
                    .listStyle(InsetGroupedListStyle()) // Use this for better visual consistency
                    .background(Color.clear) // Makes the list background transparent
                    .scrollContentBackground(.hidden) // Hides the default background of the list
                }
                
                Spacer()
            }
        }
    }
}

struct FirstCatBasicsView: View {
    var body: some View {
        Text("First Cat Basics Content")
            .navigationTitle("First Cat Basics")
    }
}

struct PottyTrainingView: View {
    var body: some View {
        Text("How to Potty Train Content")
            .navigationTitle("Potty Training")
    }
}

struct DietNutritionView: View {
    var body: some View {
        Text("Diet & Nutrition Content")
            .navigationTitle("Diet & Nutrition")
    }
}

#Preview {
    CatCareTipsView()
}
