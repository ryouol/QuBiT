//
//  PhotonsView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//

import SwiftUI

struct PhotonsView: View {
    var body: some View {
        Text("POLARIZATION QUBIT")
            .font(.custom("CascadiaCode-Regular", size: 28))
        
        Image("PHOTONS")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 400)
        
        Text("Each photon carries an electromagnetic field with a specific direction, known as its polarization. The two states used to define qubits are horizontal polarization and vertical polarization.")
            .font(.custom("CascadiaCode-Regular", size: 15))
            .padding()
Text("0 = horizontal, 1 = vertical")
            .font(.custom("CascadiaCode-Regular", size: 15))
            .padding()
        
        NavigationLink(destination: ARPhotons()) {
            Text("Photons")
                .font(.custom("CascadiaCode-Regular", size: 15))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
                .frame(width: 100)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    PhotonsView()
}
