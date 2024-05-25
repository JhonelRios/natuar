//
//  AnimalDetailsView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 24/05/24.
//

import SwiftUI

struct AnimalDetailsView: View {
    @State var selection: Int = 0
    let items: [String] = ["Habitat", "Dieta", "Gestación"]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("ANIMAL")
                    .font(.system(size: 12, weight: .semibold, design: .monospaced))
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                
                Spacer().frame(height: 6)
                
                Text("Llama")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("TextPrimary"))
                
                Spacer().frame(height: 4)
                
                Text("Lorem ipsum dolor sit amet")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(.gray)
                
                Spacer().frame(height: 16)
                
                HStack(spacing: 10) {
                    InfoCardView(icon: Image(systemName: "gauge.with.needle"), title: "Peso", value: "20.4 kg", background: Color("PrimaryColorLigth"))
                    
                    InfoCardView(icon: Image(systemName: "ruler"), title: "Medidas", value: "70 cm", rotationDegrees: 135, background: Color("PrimaryColorAccent"))
                    
                    InfoCardView(icon: Image(systemName: "clock"), title: "Edad", value: "20 años", background: Color("PrimaryColorDark"))
                }
                
                Spacer().frame(height: 12)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrude dolor in reprehenderit in. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrude dolor in reprehenderit in.")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(Color("TextPrimary"))
                
                Spacer().frame(height: 20)
                
                SegmentedPicker(items: items, selection: $selection)
                
                Spacer().frame(height: 12)
                
                switch selection {
                case 0:
                    Text("Habitat - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("TextPrimary"))
                case 1:
                    Text("Dieta - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("TextPrimary"))
                case 2:
                    Text("Gestación - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color("TextPrimary"))
                default:
                    Text("Def")
                }
                
                Text("IMÁGENES")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .opacity(0.6)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(0..<5) { _ in
                            AsyncImage(url: URL(string: "https://1.bp.blogspot.com/-wp5IGEG_syw/WA-aHE9EapI/AAAAAAAAehM/HsEKPoC-NAcz2_dIEOHNBBa0bq4krduTQCLcB/s1600/llama%2Bperu%2Bmachu%2Bpicchu.jpg")) { image in
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
        }
    }
}

#Preview {
    AnimalDetailsView()
}
