//
//  AtomsAndIonsView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//

import SwiftUI

struct AtomsAndIonsView: View {
    var body: some View {
        Text("TRAPPED ATOMS & IONS")
            .font(.custom("CascadiaCode-Regular", size: 28))
        
        Image("ATOMS")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 400)
        
        Text("We can use the energy levels of electrons in neutral atoms or ions as qubits. In their natural state, these electrons occupy the lowest possible energy levels. Using lasers, we can “excite” them to a higher energy level. We can assign the qubit values based on their energy state.")
            .font(.custom("CascadiaCode-Regular", size: 15))
            .padding()
        Text("0 = low energy state, 1 = high energy state")
            .font(.custom("CascadiaCode-Regular", size: 15))
            .padding()
        
        NavigationLink(destination: ARAtoms()) {
            Text("Atoms & Ions")
                .font(.custom("CascadiaCode-Regular", size: 15))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
                .frame(width: 190)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    AtomsAndIonsView()
}
