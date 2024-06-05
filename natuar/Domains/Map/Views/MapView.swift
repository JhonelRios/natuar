//
//  MapView.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 17/04/24.
//

import SwiftUI
import MapKit

struct MapView : View {
    @ObservedObject var mapViewModel: MapViewModel
    
    @State private var mapStyleCounter: Int = 0
    @State private var currentMapStyle: MapStyle = .standard
    
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .topLeading) {
                Map(position: $position) {
                    UserAnnotation()
                    
                    //                    let currentCoordinate = position.region?.center ?? CLLocationCoordinate2D()
                    
                    //                    Marker("Llama", coordinate: CLLocationCoordinate2D(latitude: -12.057191582326803, longitude: -77.05857539270373))
                    Annotation("Llama", coordinate: CLLocationCoordinate2D(latitude: -12.057191582326803, longitude: -77.05857539270373)) {
                        NavigationLink(destination: AnimalScreen()) {
                            Image(systemName: "mappin.circle.fill")
                                .font(.system(size: 24))
                                .foregroundColor(Color("PrimaryColor"))
                        }
                    }
                }
                .mapControls {
                    MapUserLocationButton()
                    MapCompass()
                }
                .mapStyle(currentMapStyle)
                .onAppear {
                    CLLocationManager().requestWhenInUseAuthorization()
                }
                .onMapCameraChange(frequency: .onEnd) { context in
                    print(context.region.center)
                    
                    let regionCenter = context.region.center
                    
                    mapViewModel.fetchNearestSpot(latitude: regionCenter.latitude, longitude: regionCenter.longitude) { success in
                        if success {
                            print("SPOOOOT: ", mapViewModel.spot ?? "")
                        } else {
                            print("Error: ", mapViewModel.errorMessage ?? "")
                        }
                    }
                }
            }
            
            //            ToggleMapStyleButton(
            //                onMapStyleButtonTapped: {
            //                    toggleMapStyle()
            //                }
            //            )
            Button(action: { toggleMapStyle() }, label: {
                Text("Cambiar estilo del mapa")
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
            .padding(.bottom)
            
            NavigationLink(destination: AnimalScreen(), label: {
                Text("Ver modelo 3D")
                    .padding(.all, 10)
                    .background(.blue)
                    .cornerRadius(8)
                    .foregroundColor(.white)
            })
            .padding(.bottom, 80)
        }
        
    }
    
    private func toggleMapStyle() {
        mapStyleCounter += 1
        currentMapStyle = mapStyleCounter % 2 == 0 ? .standard : .imagery
    }
}

//#Preview {
////    MapView()
//}
