//
//  StateObjectView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct StateObjectView: View {
    @StateObject private var stateObjectSettings = UserSettings()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Username: \(stateObjectSettings.username)")
            Button("Change Username") {
                stateObjectSettings.username = "StateObjectUser"
            }
        }
        .padding()
        .navigationTitle("@StateObject Example")
    }
}
