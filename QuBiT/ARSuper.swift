//
//  ARSuper.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//
import SwiftUI
import RealityKit

struct ARViewContainerS: UIViewRepresentable {
    class Coordinator {
        var arView: ARView?
        var qubitEntity: ModelEntity?

        init(arView: ARView, qubitEntity: ModelEntity) {
            self.arView = arView
            self.qubitEntity = qubitEntity
        }

        @objc func handlePinch(_ gesture: UIPinchGestureRecognizer) {
            guard let qubitEntity = self.qubitEntity else { return }

            if gesture.state == .changed {
                let scale = Float(gesture.scale)
                qubitEntity.scale = SIMD3(repeating: scale)
                gesture.scale = 1 // Reset scale to avoid compounding the scale
            }
        }

        @objc func handleRotation(_ gesture: UIRotationGestureRecognizer) {
            guard let qubitEntity = self.qubitEntity else { return }

            if gesture.state == .changed {
                let rotation = Float(gesture.rotation)
                qubitEntity.transform.rotation = simd_quatf(angle: rotation, axis: SIMD3(x: 0, y: 1, z: 0))
                gesture.rotation = 0 // Reset rotation to avoid compounding the rotation
            }
        }
    }
    
    func makeCoordinator() -> Coordinator {
        // Placeholder Coordinator initialization
        Coordinator(arView: ARView(), qubitEntity: ModelEntity())
    }
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Sphere representing the qubit
        let sphere = MeshResource.generateSphere(radius: 0.05)
        let sphereMaterial = SimpleMaterial(color: .blue, isMetallic: true)
        let qubitEntity = ModelEntity(mesh: sphere, materials: [sphereMaterial])
        
        // Setup for arrows and anchor is omitted for brevity
        
        let anchor = AnchorEntity(world: SIMD3(x: 0, y: 0, z: -0.5))
        anchor.addChild(qubitEntity)
        arView.scene.addAnchor(anchor)
        
        // Update coordinator with the current ARView and qubitEntity
        let coordinator = context.coordinator
        coordinator.arView = arView
        coordinator.qubitEntity = qubitEntity
        
        // Gesture Recognizers
        let pinchGesture = UIPinchGestureRecognizer(target: coordinator, action: #selector(Coordinator.handlePinch(_:)))
        let rotationGesture = UIRotationGestureRecognizer(target: coordinator, action: #selector(Coordinator.handleRotation(_:)))
        
        arView.addGestureRecognizer(pinchGesture)
        arView.addGestureRecognizer(rotationGesture)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}

// Your SwiftUI view that contains the ARView
struct ARSuper: View {
    var body: some View {
        ARViewContainerS().edgesIgnoringSafeArea(.all)
    }
}

struct ARSuper_Previews: PreviewProvider {
    static var previews: some View {
        ARSuper()
    }
}
