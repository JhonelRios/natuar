//
//  UbicationDetailsView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 19/04/24.
//

import SwiftUI

struct UbicationDetailsView : View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showDetails = true
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: "https://cdn.getyourguide.com/img/location/54b40793cd6af.jpeg/49.webp")) { image in
                    image.resizable().aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .containerRelativeFrame(.horizontal)
                .frame(height: 450, alignment: .bottom)
                .clipped()
                
                Spacer()
            }
            .ignoresSafeArea(edges: .top)
            .navigationBarHidden(true)
            .sheet(isPresented: $showDetails, content: {
                DetailsView()
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
                    .presentationBackgroundInteraction(.enabled(upThrough: .medium))
                    .interactiveDismissDisabled()
            })
            
            BackButton(action: {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct DetailsView : View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("DETALLE")
                    .font(.system(size: 12, weight: .semibold, design: .monospaced))
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                
                Spacer().frame(height: 6)
                
                Text("Parque natural")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(Color("TextPrimary"))
                
                Spacer().frame(height: 12)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                    .font(.system(size: 16, weight: .regular))
                    .foregroundColor(Color("TextPrimary"))
                
                Spacer().frame(height: 20)
                
                Text("IMÁGENES")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .opacity(0.6)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(0..<5) { _ in
                            AsyncImage(url: URL(string: "https://cdn.getyourguide.com/img/location/54b40793cd6af.jpeg/49.webp")) { image in
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
    UbicationDetailsView()
}
