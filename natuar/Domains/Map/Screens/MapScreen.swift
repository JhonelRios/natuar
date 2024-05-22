//
//  MapScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI

struct MapScreen: View {
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
                        NavigationLink(destination: UbicationDetailsView()) {
                            Image(systemName: "info.circle")
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
