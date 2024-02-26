//
//  ARPhotos.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//
import SwiftUI
import RealityKit


struct ARViewContainerP: UIViewRepresentable {
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        // Sphere representing the qubit
        let sphere = MeshResource.generateSphere(radius: 0.05)
        let sphereMaterial = SimpleMaterial(color: .blue, isMetallic: true)
        let qubitEntity = ModelEntity(mesh: sphere, materials: [sphereMaterial])
        
        // Arrow representing the spin direction (up)
        let arrowUp = MeshResource.generateBox(width: 0.01, height: 0.1, depth: 0.01)
        let arrowMaterial = SimpleMaterial(color: .green, isMetallic: false)
        let arrowEntityUp = ModelEntity(mesh: arrowUp, materials: [arrowMaterial])
        arrowEntityUp.position = SIMD3(x: 0.0, y: 0.1, z: 0.0) // Adjust the position above the sphere
        
        // Arrow representing the spin direction (down)
        let arrowEntityDown = ModelEntity(mesh: arrowUp, materials: [arrowMaterial])
        arrowEntityDown.position = SIMD3(x: 0.0, y: -0.1, z: 0.0) // Adjust the position below the sphere
        
        // Add arrows to the qubit entity
        qubitEntity.addChild(arrowEntityUp)
        qubitEntity.addChild(arrowEntityDown)

        // Anchor and scene setup
        let anchor = AnchorEntity(world: SIMD3(x: 0, y: 0, z: -0.5))
        anchor.addChild(qubitEntity)
        arView.scene.addAnchor(anchor)
        
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
}

struct ARPhotons: View {
    var body: some View {
        ARViewContainerP().edgesIgnoringSafeArea(.all)
    }
}

struct ARPhotons_Previews: PreviewProvider {
    static var previews: some View {
        ARPhotons()
    }
}






//import SwiftUI
//
//struct ARPhotos: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    ARPhotos()
//}
