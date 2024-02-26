//
//  ContentView.swift
//  QuBiT
//
//  Created by Roy Luo on 2024-02-23.
//
import SwiftUI
import RealityKit

struct ContentView: View {
    // Define some colors from the logo to use in the UI
    let darkBackground = Color(red: 0x1e / 255, green: 0x29 / 255, blue: 0x2d / 255)
    let accentColor = Color.white
    
//    init(){
//        for familyName in UIFont.familyNames {
//            print(familyName)
//            for fontName in UIFont.fontNames(forFamilyName: familyName){
//                print("--\(fontName)")
//            }
//        }
//    }
     
    var body: some View {
        NavigationView {
            ZStack {
                // Use the dark background color
                darkBackground.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("qubit")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 400)
                    
                    Spacer()
                    
                    // Start Journey button
                    NavigationLink(destination: ClassicalComputingView()) {
                        Text("Start Journey")
                            .font(.custom("CascadiaCode-Regular", size: 20))
                            .fontWeight(.semibold)
                            .foregroundColor(darkBackground)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(accentColor)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                   
                    Spacer()
                }
            }
            .navigationBarTitle(Text("QuBiT"), displayMode: .inline)
            .navigationBarHidden(true)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif


