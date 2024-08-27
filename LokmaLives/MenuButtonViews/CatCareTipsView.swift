import SwiftUI

// CatCareTipsView displays various categories of cat care tips, such as first cat basics, potty training, diet & nutrition, grooming, and senior cat care.
// Each section contains navigation links to detailed views on specific topics within that category.
struct CatCareTipsView: View {
    var body: some View {
        ZStack {
            VStack {
                // Header text for the view with custom font and slight opacity.
                HStack {
                    Text("── Tips ──")
                        .font(Font.custom("Raleway-Bold", size: 38))
                        .opacity(0.78)
                }
                
                // NavigationStack to manage navigation within the list of cat care tips.
                NavigationStack {
                    List {
                        // Section for 'First Cat Basics' with relevant tips and navigation links.
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
                        
                        // Section for 'Potty Training' tips with related navigation links.
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
                        
                        // Section for 'Diet & Nutrition' tips with related navigation links.
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
                        
                        // Section for 'Grooming' tips with relevant navigation links.
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
                        
                        // Section for 'Senior Cat Care' tips with related navigation links.
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
                    .listStyle(InsetGroupedListStyle())
                    .background(Color.clear)
                    .scrollContentBackground(.hidden)
                }
                
                Spacer()
            }
        }
    }
}

// Placeholder view for 'First Cat Basics' section with a simple text and navigation title.
struct FirstCatBasicsView: View {
    var body: some View {
        Text("First Cat Basics Content")
            .navigationTitle("First Cat Basics")
    }
}

// Placeholder view for 'Potty Training' section with a simple text and navigation title.
struct PottyTrainingView: View {
    var body: some View {
        Text("How to Potty Train Content")
            .navigationTitle("Potty Training")
    }
}

// Placeholder view for 'Diet & Nutrition' section with a simple text and navigation title.
struct DietNutritionView: View {
    var body: some View {
        Text("Diet & Nutrition Content")
            .navigationTitle("Diet & Nutrition")
    }
}

#Preview {
    CatCareTipsView()
}
