//
//  ContentView.swift
//  WebbAttempt
//
//  Created by Laura Jun on 11/3/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var isButtonVisible = true
   
    
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    
    var body: some View {
       
            if isButtonVisible{
                VStack {
                    Text("Find 4 mural objects around IYA").font(.extraLargeTitle)
                    VStack {
                        Button("Start Scavenger Hunt"){
                            Task{
                                await openImmersiveSpace(id: "RocketScene")
                                await openImmersiveSpace (id: "LightbulbScene")
                                await openImmersiveSpace (id: "TrainScene")
                                
                                isButtonVisible = false
                            }
                        }
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                        .frame(alignment: .center)
                    }
                    .padding()
                    .glassBackgroundEffect()
                }
            }
        }
    }


