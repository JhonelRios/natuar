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
    var body: some View {
        ARViewContainer()
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal, .vertical]
        config.environmentTexturing = .automatic
        
        if ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh) {
            config.sceneReconstruction = .mesh
        }
        
        arView.session.run(config)
        
        //        let material = SimpleMaterial(color: .purple, isMetallic: true)
        //
        //        let mesh = MeshResource.generateBox(size: 0.2, cornerRadius: 0.005)
        //
        //        let animal = ModelEntity(mesh: mesh, materials: [material])
        
//                let animal = try! Entity.load(named: "alpaca")
        let animal = try! Entity.load(named: "llama6")
//        animal.transform.translation.z = -1.5
        
        if let animalAnimation = animal.availableAnimations.first {
            animal.playAnimation(animalAnimation.repeat(duration: .infinity), transitionDuration: 0.5, startsPaused: false)
        } else {
            print("No animation in USDZ")
        }
        
        //        animal.scale = SIMD3<Float>(repeating: )
        
        //        let anchor = AnchorEntity(.plane(.horizontal, classification: .any, minimumBounds: SIMD2<Float>(0.2, 0.2)))
        //        let worldPosition = SIMD3<Float>(0, -10.0, -20.0)
        //        let worldPosition = SIMD3<Float>(0, 0, -1)
        let anchor = AnchorEntity(plane: .horizontal)
        //        anchor.position = SIMD3<Float>(0, 0, -1)
        
        //        anchor.children.append(animal)
        anchor.addChild(animal)
        
        //        let cameraPosition = SIMD3<Float>(0, 0, -1)
        //        anchor.position += cameraPosition
        
        //        arView.scene.anchors.append(anchor)
        arView.scene.addAnchor(anchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        print("View is updating")
    }
}

#Preview {
    AnimalScreen()
}
