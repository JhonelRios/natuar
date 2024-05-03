//
//  MapView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI
import MapKit

struct MapView : View {
    @State private var mapStyleCounter: Int = 0
    @State private var currentMapStyle: MapStyle = .standard
    
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .topLeading) {
                Map(position: $position) {
                    UserAnnotation()
                }
                .mapControls {
                    MapUserLocationButton()
                }
                .mapStyle(currentMapStyle)
                .onAppear {
                    CLLocationManager().requestWhenInUseAuthorization()
                }
                
                ToggleMapStyleButton(
                    onMapStyleButtonTapped: {
                        toggleMapStyle()
                    }
                )
                .padding(.trailing, 20)
                
                
            }
            
            NavigationLink(destination: AnimalScreen(), label: {
                Text("Ver modelo 3D")
                    .padding(.all, 10)
                    .background(.blue)
                    .cornerRadius(8)
                    .foregroundColor(.white)
            })
        }
        
    }
    
    private func toggleMapStyle() {
        mapStyleCounter += 1
        currentMapStyle = mapStyleCounter % 2 == 0 ? .standard : .imagery
    }
}

extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D {
        return .init(latitude: 25.7602, longitude: -80.1959)
    }
}

extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .userLocation, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}

#Preview {
    MapView()
}
