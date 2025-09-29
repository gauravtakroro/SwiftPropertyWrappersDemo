//
//  EnvironmentObjectView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct EnvironmentObjectView: View {
    @EnvironmentObject var envSettings: UserSettings
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Environment Username: \(envSettings.username)")
            TextField("Update Username", text: $envSettings.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
        .padding()
        .navigationTitle("@EnvironmentObject Example")
    }
}
