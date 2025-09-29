//
//  AppStorageView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct AppStorageView: View {
    @AppStorage("app_username") private var storedUsername: String = "DefaultUser"
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Persistent Username", text: $storedUsername)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Stored Username: \(storedUsername)")
        }
        .padding()
        .navigationTitle("@AppStorage Example")
    }
}
