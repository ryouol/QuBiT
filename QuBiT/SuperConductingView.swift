//
//  SuperConductingView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//

import SwiftUI

struct SuperConductingView: View {
    var body: some View {
        Text("SUPERCONDUCTING CIRCUITS")
            .font(.custom("CascadiaCode-Regular", size: 27))
        
        Image("SUPER")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 400)
        
        Text("When cooled to a low temperature, some materials allow an electrical current to flow with no resistance. We call these superconductors. We can design electrical circuits based on superconductors to behave like qubits. Unlike the other examples of qubits, these fabricated systems are made of billions of atoms, however, they still behave as a single quantum system. One way we can build a superconducting qubit is by assigning a value to the direction that the current flows around an electrical circuit.")
            .font(.custom("CascadiaCode-Regular", size: 12))
            .padding()
        Text("0 = clockwise current , 1 = counterclockwise current")
            .font(.custom("CascadiaCode-Regular", size: 12))
            .padding()
        
        NavigationLink(destination: ARSuper()) {
            Text("Superconducters")
                .font(.custom("CascadiaCode-Regular", size: 15))
                .foregroundColor(.white)
                .padding()
                .frame(height: 50)
                .frame(width: 170)
                .background(Color.purple)
                .cornerRadius(10)
        }
    }
}

#Preview {
    SuperConductingView()
}
