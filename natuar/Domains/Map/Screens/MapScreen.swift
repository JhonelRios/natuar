//
//  MapScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct MapScreen: View {
    @StateObject private var mapViewModel = MapViewModel()
    @State private var showDetails = false
    
    var body: some View {
        NavigationStack {
            MapView()
                .navigationTitle("Lima")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .imageScale(.medium)
                            
                            Text("Zona").bold()
                        }
                        .foregroundColor(Color("MapHeading"))
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        if let spot = mapViewModel.spot {
                            NavigationLink(destination: UbicationDetailsView(spot: spot)) {
                                Image(systemName: "info.circle")
                            }
                        } else {
                            EmptyView()
                        }
                    }
                }
        }
        .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MapScreen()
}
