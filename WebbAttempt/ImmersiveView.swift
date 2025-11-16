//
//  ImmersiveView.swift
//  WebbAttempt
//
//  Created by Laura Jun on 11/3/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    @State var counter = 0
    
    var body: some View{
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "RocketScene", in: realityKitContentBundle) {
                content.add(scene)
            }
            if let scene = try? await Entity(named: "LightbulbScene", in: realityKitContentBundle) {
                content.add(scene)
            }
            if let scene = try? await Entity(named: "TrainScene", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
        
            .gesture(
                TapGesture()
                    .targetedToAnyEntity()
                .onEnded {
                    value in
                    _ = value.entity.applyTapForBehaviors()
                    let tappedEntity = value.entity
                            tappedEntity.removeFromParent()
                   counter = counter + 1
            })
        
        if (counter > 2) {
            RealityView { content in
                               if let scene = try? await Entity(named: "PaperPlaneScene", in: realityKitContentBundle) {
                                   content.add(scene)
                               }
                           }
            .gesture(TapGesture().targetedToAnyEntity()
                .onEnded({value in
                    _ = value.entity.applyTapForBehaviors()
                })
                )}
            }
        }

