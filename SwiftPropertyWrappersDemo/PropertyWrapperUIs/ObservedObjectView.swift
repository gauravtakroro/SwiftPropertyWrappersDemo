//
//  ObservedObjectView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct ObservedObjectView: View {
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Username: \(userSettings.username)")
            TextField("Enter username", text: $userSettings.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
        .padding()
        .navigationTitle("@ObservedObject Example")
    }
}
