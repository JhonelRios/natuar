//
//  AnimalDetailsView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 24/05/24.
//

import SwiftUI

struct AnimalDetailsView: View {
    @StateObject private var animalViewModel = AnimalViewModel()
    
    var animal: Animal
    
    @State var selection: Int = 0
    let items: [String] = ["Habitat", "Dieta", "Gestación"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("ANIMAL")
                            .font(.system(size: 12, weight: .semibold, design: .monospaced))
                            .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        
                        Spacer().frame(height: 6)
                        
                        Text(animal.name)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(Color("TextPrimary"))
                        
                        Spacer().frame(height: 4)
                        
                        Text(animal.scientific_name)
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        animalViewModel.markAsFavorite(animalId: animal.id) { success in
                            if success {
                                print("Animal marked as favorite")
                            } else {
                                print(animalViewModel.errorMessage ?? "")
                            }
                        }
                    }, label: {
                        if animalViewModel.isLoading {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle())
                                .padding(.trailing, 15)
                        } else {
                            Image(systemName: animalViewModel.isFavorite ? "heart.fill" : "heart")
                                .foregroundColor(.red)
                                .font(.system(size: 40))
                        }
                    })
                }
                
                Spacer().frame(height: 16)
                
                HStack(spacing: 10) {
                    InfoCardView(icon: Image(systemName: "gauge.with.needle"), title: "Peso", value: "\(animal.weigth) kg", background: Color("PrimaryColorLigth"))
                    
                    InfoCardView(icon: Image(systemName: "ruler"), title: "Medidas", value: "\(animal.height) cm", rotationDegrees: 135, background: Color("PrimaryColorAccent"))
                    
                    InfoCardView(icon: Image(systemName: "clock"), title: "Edad", value: "\(animal.average_age) años", background: Color("PrimaryColorDark"))
                }
                
                Spacer().frame(height: 12)
                
                Text(animal.description)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(Color("TextPrimary"))
                
                Spacer().frame(height: 20)
                
                SegmentedPicker(items: items, selection: $selection)
                
                Spacer().frame(height: 12)
                
                switch selection {
                case 0:
                    Text(animal.habitat)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("TextPrimary"))
                case 1:
                    Text(animal.diet)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("TextPrimary"))
                case 2:
                    Text(animal.gestation)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("TextPrimary"))
                default:
                    Text("Undefined selected tab")
                }
                
                Text("IMÁGENES")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .opacity(0.6)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(animal.images, id: \.self) { imageUrl in
                            AsyncImage(url: URL(string: imageUrl)) { image in
                                image.resizable().aspectRatio(contentMode: .fill)
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 200, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .onAppear {
                animalViewModel.fetchIsFavorite(animalId: animal.id) { success in
                    if success {
                        print(animalViewModel.isFavorite)
                    } else {
                        print(animalViewModel.errorMessage ?? "")
                    }
                }
            }
        }
    }
}

#Preview {
    AnimalDetailsView(animal: Animal(id: 1, name: "Llama", scientific_name: "Llama cientifica", description: "Descripcion del animal", weigth: 20, height: 13, average_age: 32, habitat: "Peru", diet: "Pasto", gestation: "Tiene un tiempo de gestacion en prueba", in_danger: false, images: [""], model_name: "llama", latitude: -12.23, longitude: -12.23, spotId: 1))
}
