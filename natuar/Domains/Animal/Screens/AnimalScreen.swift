//
//  AnimalScreen.swift
//  natuar
//
//  Created by Jhonel Rios Jaimes on 3/05/24.
//

import SwiftUI
import RealityKit
import ARKit

struct AnimalScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var showDetails = true
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            ARViewContainer()
                .ignoresSafeArea()
                .navigationBarHidden(true)
                .sheet(isPresented: $showDetails, content: {
                    AnimalDetailsView()
                        .presentationDetents([.height(50), .medium, .large])
                        .presentationDragIndicator(.visible)
                        .presentationBackgroundInteraction(.enabled(upThrough: .large))
                        .interactiveDismissDisabled()
                })
            
            BackButton(action: {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
//        let config = ARWorldTrackingConfiguration()
//        config.planeDetection = [.horizontal, .vertical]
//        config.environmentTexturing = .automatic
//        
//        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
//            config.sceneReconstruction = .mesh
//        }
//        
//        arView.session.run(config)
//        
//        let animal = try! Entity.load(named: "llama6")
//        
//        if let animalAnimation = animal.availableAnimations.first {
//            animal.playAnimation(animalAnimation.repeat(duration: .infinity), transitionDuration: 0.5, startsPaused: false)
//        } else {
//            print("No animation in USDZ")
//        }
//        
//        let anchor = AnchorEntity(plane: .horizontal)
//        
//        anchor.addChild(animal)
//        
//        arView.scene.addAnchor(anchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        print("View is updating")
    }
}

#Preview {
    AnimalScreen()
}
