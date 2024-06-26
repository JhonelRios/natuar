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


// Info: https://medium.com/journey-of-one-thousand-apps/arkit-and-corelocation-part-one-fc7cb2fa0150
struct ARViewContainer: UIViewRepresentable {
    var animal: Animal
    
    func makeUIView(context: Context) -> ARView {
        ARVariables.arView = ARView(frame: .zero)
        ARVariables.arView.environment.lighting.intensityExponent = 2
        
        ARVariables.arView.automaticallyConfigureSession = false
        
        let config = ARWorldTrackingConfiguration()
        //        config.planeDetection = [.horizontal, .vertical]
        config.isLightEstimationEnabled = true
        config.planeDetection = [.horizontal]
        config.environmentTexturing = .none
        
        
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
        
        let frontLight = CustomFrontLight()
        let upperLight = CustomFrontLight()
        let lowerLight = CustomFrontLight()
//        let rightLight = CustomFrontLight()
        upperLight.position = [0, 2, -1.8]
        frontLight.position = [0, 0, 2]
        lowerLight.position = [0, -2, -1.8]
//        rightLight.position = [2.5, 0, -2.5]
        anchor.addChild(frontLight)
        anchor.addChild(upperLight)
        anchor.addChild(lowerLight)
        
        ARVariables.arView.scene.addAnchor(anchor)
        
        return ARVariables.arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        print("View is updating")
    }
}

// Info: https://medium.com/macoclock/realitykit-911-lighting-and-shadows-66f99bcd5219
class CustomFrontLight: Entity, HasPointLight {
    required init() {
        super.init()
        self.light = PointLightComponent(color: .white,
                                         intensity: 70000,
                                         attenuationRadius: 30)
        
        self.position = [0, -0.5, 0.5]
    }
}


#Preview {
    AnimalScreen(selectedAnimal: Animal(id: 1, name: "Llama", scientific_name: "Llama cientifica", description: "Descripcion del animal", weigth: 20, height: 13, average_age: 32, habitat: "Peru", diet: "Pasto", gestation: "Tiene un tiempo de gestacion en prueba", in_danger: false, images: [""], model_name: "llama", latitude: -12.23, longitude: -12.23, spotId: 1))
}
