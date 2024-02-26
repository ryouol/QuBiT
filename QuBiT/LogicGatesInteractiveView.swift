//
//  LogicGatesInteractiveView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-24.
//
import SwiftUI

struct LogicGatesInteractiveView: View {
    @State private var selectedGate = "AND"
    @State private var inputA = false
    @State private var inputB = false
    let gates = ["AND", "OR", "NOT"]
    

    var output: Bool {
        switch selectedGate {
        case "AND":
            return inputA && inputB
        case "OR":
            return inputA || inputB
        case "NOT":
            return !inputA // Simplified for demonstration
        default:
            return false
        }
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("At the heart of classical computing are bits, which can hold a value of either 0 or 1. These binary states represent off or on states, respectively, akin to a light switch.")
                .font(.custom("CascadiaCode-Regular", size: 12))
                .padding()
            
            Text("Select a logic gate to see how it processes input bits. AND gate requires both inputs to be 1 to output 1. OR gate outputs 1 if any input is 1. NOT gate inverts the input.")
                .font(.custom("CascadiaCode-Regular", size: 15))
                .padding()

            Picker("Select Gate", selection: $selectedGate) {
                ForEach(gates, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            Toggle(isOn: $inputA) {
                Text("Input A")
                    .font(.custom("CascadiaCode-Regular", size: 18))
                    .padding()
            }

            if selectedGate != "NOT" {
                Toggle(isOn: $inputB) {
                    Text("Input B")
                        .font(.custom("CascadiaCode-Regular", size: 18))
                        .padding()
                }
            }

            Text("Output: \(output ? "1" : "0")")
                .font(.custom("CascadiaCode-Regular", size: 28))
                .padding()
            
            Image("Gates")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 200)
                

        }.padding()
    }
}

struct LogicGatesInteractiveView_Previews: PreviewProvider {
    static var previews: some View {
        LogicGatesInteractiveView()
    }
}
