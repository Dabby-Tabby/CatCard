import SwiftUI

struct VetVaultView: View {
    @State private var name: String = "Lokma Özok"
    @State private var age: String = "Born on March 31st, 2023"
    @State private var breed: String = "Orange Tabby"
    @State private var weight: String = "14.1 lbs"
    @State private var medication: String = "Clavamox - 32.7mg Daily"
    @State private var medication2: String = "Prednisone - 1mg Bi-Weekly"
    @State private var allergy1: String = "House Dust"
    @State private var contactName1: String = "Mom"
    @State private var contactNumber1: String = "+1 (832) 535-4351"
    @State private var contactName2: String = "Dad"
    @State private var contactNumber2: String = "+1 (281) 414-7387"
    @State private var vaccination1: String = "Rabies - 03/15/2024"
    @State private var vaccination2: String = "FVRCP - 03/15/2024"
    @State private var vaccination3: String = "FeLV - 03/15/2024"

    var body: some View {
        ZStack {
            Color.teal
                .opacity(0.15)
                .ignoresSafeArea()

            VStack {
                HStack {
                    Image(systemName: "staroflife.fill")
                        .foregroundColor(.red)
                        .opacity(0.88)
                    Text("Vet Vault")
                        .font(Font.custom("Raleway-Bold", size: 23))
                        .foregroundColor(.red)
                        .opacity(0.88)
                }

                List {
                    Section(header: Text("Identification")) {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("Name", text: $name)
                                .padding(.bottom, 9.0)
                                .font(.footnote)
                            Text("Date of Birth")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("Age", text: $age)
                                .padding(.bottom, 9.0)
                                .font(.footnote)
                            Text("Weight")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("Weight", text: $weight)
                                .padding(.bottom, 9.0)
                                .font(.footnote)
                            Text("Breed")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            TextField("Breed", text: $breed)
                                .padding(.bottom, 9.0)
                                .font(.footnote)
                        }
                    }
                    Section(header: Text("Medication")) {
                        TextField("Med1", text: $medication)
                        TextField("Med2", text: $medication2)
                    }
                    Section(header: Text("Allergies")) {
                        TextField("Aller1", text: $allergy1)
                    }
                    Section(header: Text("Vaccinations")) {
                        TextField("Vaccine1", text: $vaccination1)
                        TextField("Vaccine2", text: $vaccination2)
                        TextField("Vaccine3", text: $vaccination3)
                    }
                    Section(header: Text("Emergency Contacts")) {
                        VStack(alignment: .leading) {
                            TextField("Cont1", text: $contactName1)
                            TextField("Cont1", text: $contactNumber1)
                                .foregroundColor(.blue)
                        }
                        VStack(alignment: .leading) {
                            TextField("Cont2", text: $contactName2)
                            TextField("Cont2", text: $contactNumber2)
                                .foregroundColor(.blue)
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle()) // Use this for better visual consistency
                .background(Color.clear) // Makes the list background transparent
                .scrollContentBackground(.hidden) // Hides the default background of the list

                Spacer()
            }
            .padding(.top, 20) // Adjusts top padding for better alignment
        }
        .navigationTitle("Vet Vault")
    }
}

#Preview {
    VetVaultView()
}
