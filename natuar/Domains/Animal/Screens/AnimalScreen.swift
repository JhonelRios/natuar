//
//  AnimalScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 3/05/24.
//

import SwiftUI
import RealityKit
import ARKit

struct ARVariables {
    static var arView: ARView!
}

struct AnimalScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var animalViewModel = AnimalViewModel()
    
    @State private var showDetails = true
    var selectedAnimal: Animal
    var fromFavorites: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .topLeading) {
                ARViewContainer(animal: selectedAnimal)
                    .ignoresSafeArea()
                    .navigationBarHidden(true)
                    .sheet(isPresented: $showDetails, content: {
                        AnimalDetailsView(animal: selectedAnimal, fromFavorites: fromFavorites)
                            .presentationDetents([.height(76), .medium, .large])
                            .presentationDragIndicator(.visible)
                            .presentationBackgroundInteraction(.enabled(upThrough: .large))
                            .interactiveDismissDisabled()
                    })
                
                BackButton(action: {
                    presentationMode.wrappedValue.dismiss()
                })
            }
            
            Button {
                // Placeholder: take a snapshot
                ARVariables.arView.snapshot(saveToHDR: false) { (image) in
                    let compressedImage = UIImage(data: (image?.pngData())!)
                    
                    UIImageWriteToSavedPhotosAlbum(compressedImage!, nil, nil, nil)
                }
            } label: {
                Image(systemName: "camera.aperture")
                    .frame(width: 60, height: 60)
                    .font(.largeTitle)
                //                    .background(.white.opacity(0.75))
                    .background(.white)
                    .foregroundColor(Color("TextPrimary"))
                    .cornerRadius(30)
                    .padding()
                    .padding(.bottom, 45)
            }
        }
        .onAppear {
            animalViewModel.markAsSeen(animalId: selectedAnimal.id)
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    var animal: Animal
    
    func makeUIView(context: Context) -> ARView {
        ARVariables.arView = ARView(frame: .zero)
        
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal, .vertical]
        config.environmentTexturing = .automatic
        
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
            config.sceneReconstruction = .mesh
        }
        //
        ARVariables.arView.session.run(config)
        print(animal.model_name)
        //
        let animal = try! Entity.load(named: animal.model_name)
        
        if let animalAnimation = animal.availableAnimations.first {
            animal.playAnimation(animalAnimation.repeat(duration: .infinity), transitionDuration: 0.5, startsPaused: false)
        } else {
            print("No animation in USDZ")
        }
        
        let anchor = AnchorEntity(plane: .horizontal)
        
        anchor.addChild(animal)
        
        ARVariables.arView.scene.addAnchor(anchor)
        
        return ARVariables.arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        print("View is updating")
    }
}

#Preview {
    AnimalScreen(selectedAnimal: Animal(id: 1, name: "Llama", scientific_name: "Llama cientifica", description: "Descripcion del animal", weigth: 20, height: 13, average_age: 32, habitat: "Peru", diet: "Pasto", gestation: "Tiene un tiempo de gestacion en prueba", in_danger: false, images: [""], model_name: "llama", latitude: -12.23, longitude: -12.23, spotId: 1))
}
