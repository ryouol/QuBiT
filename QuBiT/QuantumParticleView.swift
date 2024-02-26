//
//  QuantumParticleView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//
import SwiftUI
import RealityKit

import SwiftUI

struct QuantumParticleView: View {
    var body: some View {
        Text("SPIN")
            .font(.custom("CascadiaCode-Regular", size: 28))
        
        Image("SPIN")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 400)
        
        Text("Most quantum particles behave like little magnets. We call this property spin. The spin orientation is always pointing either fully up or fully down but never in between. Using the spin states of up and down, we can build a spin qubit")
            .font(.custom("CascadiaCode-Regular", size: 15))
            .padding()
Text("0 = pointing up, 1 = pointing down")
            .font(.custom("CascadiaCode-Regular", size: 15))
            .padding()
        NavigationLink(destination: ARQuantPart()) {
            Text("Spin Qubits")
                .font(.custom("CascadiaCode-Regular", size: 15))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
                .frame(width: 130)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    QuantumParticleView()
}

