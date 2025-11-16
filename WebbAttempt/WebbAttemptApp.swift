//
//  WebbAttemptApp.swift
//  WebbAttempt
//
//  Created by Laura Jun on 11/3/25.
//

import SwiftUI

@main
struct WebbAttemptApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.volumetric)
        
        ImmersiveSpace(id: "RocketScene"){
            ImmersiveView()
        }
        ImmersiveSpace(id: "LightbulbScene"){
            ImmersiveView()
        }
        ImmersiveSpace(id: "TrainScene"){
            ImmersiveView()
        }
    }
}
