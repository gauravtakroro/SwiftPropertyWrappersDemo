//
//  SceneStorageView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("scene_counter") private var sceneCounter = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Scene Counter: \(sceneCounter)")
            Button("Increment Scene Counter") {
                sceneCounter += 1
            }
        }
        .padding()
        .navigationTitle("@SceneStorage Example")
    }
}
