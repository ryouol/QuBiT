//
//  QuantumComputingView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-25.
//
import SwiftUI

struct QuantumComputingView: View {
    // Define the grid layout
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 152/255, green: 190/255, blue: 201/255)
                    .edgesIgnoringSafeArea(.all)

                ScrollView {
                    VStack(alignment: .center, spacing: 20) {
                        Text("Quantum Computing")
                            .font(.custom("CascadiaCode-Regular", size: 28))
                            .fontWeight(.bold)
                            .padding(.top, 20)

                        Image("QuantComp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 400)

                        Text("Quantum computing harnesses the phenomena of quantum mechanics to process information. Here, we explore the basics and the potential applications of this cutting-edge technology.")
                            .font(.custom("CascadiaCode-Regular", size: 13))
                            .padding()

                        // Use LazyVGrid for the navigation buttons
                        LazyVGrid(columns: columns, spacing: 20) {
                            NavigationLink(destination: QuantumParticleView()) {
                                Text("Quantum Particles")
                                    .font(.custom("CascadiaCode-Regular", size: 15))
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 50) 
                                    .frame(width: 190)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: AtomsAndIonsView()) {
                                Text("Atoms & Ions")
                                    .font(.custom("CascadiaCode-Regular", size: 15))
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 50)
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: PhotonsView()) {
                                Text("Photons")
                                    .font(.custom("CascadiaCode-Regular", size: 15))
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(height: 50) // Ensure consistent button height
                                    .background(Color.orange)
                                    .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: SuperConductingView()) {
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
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct QuantumComputingView_Previews: PreviewProvider {
    static var previews: some View {
        QuantumComputingView()
    }
}
