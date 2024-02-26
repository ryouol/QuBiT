//
//  ClassicalComputingView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-24.
//
import SwiftUI

struct ClassicalComputingView: View {
    @State private var showLogicGatesInteractiveView = false // For showing the logic gates interactive view

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 207/255, green: 192/255, blue: 163/255)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Image("ClassicalComputing")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 400)

                    Text("Classical Computing")
                        .font(.custom("CascadiaCode-Regular", size: 28))
                        .padding()

                    Button(action: {
                        showLogicGatesInteractiveView = true
                    }) {
                        Text("How do computers work?")
                            .font(.custom("CascadiaCode-Regular", size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    .sheet(isPresented: $showLogicGatesInteractiveView) {
                        LogicGatesInteractiveView()
                    }

                    // Navigation link button to QuantumComputingView
                    NavigationLink(destination: QuantumComputingView()) {
                        Text("<- Go to Quantum Computing ->")
                            .font(.custom("CascadiaCode-Regular", size: 18))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct ClassicalComputingView_Previews: PreviewProvider {
    static var previews: some View {
        ClassicalComputingView()
    }
}







