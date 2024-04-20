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
                    ToolbarItem {
                        Button(action: {
                            showDetails.toggle()
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                    }
                }
        }
        .sheet(isPresented: $showDetails, content: {
            UbicationDetailsView(onCloseButtonTapped: {
                showDetails.toggle()
            })
            .presentationDetents([.large])
            .presentationDragIndicator(.visible)
        })
    }
}

#Preview {
    MapScreen()
}
