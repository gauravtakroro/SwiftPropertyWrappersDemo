//
//  BindingExampleView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct BindingExampleView: View {
    @State private var isSwitchOn = false
    
    var body: some View {
        VStack(spacing: 20) {
            Toggle("Toggle Switch", isOn: $isSwitchOn)
            ChildToggleView(isOn: $isSwitchOn)
        }
        .padding()
        .navigationTitle("@Binding Example")
    }
}

struct ChildToggleView: View {
    @Binding var isOn: Bool
    var body: some View {
        Text("Child Toggle is \(isOn ? "ON" : "OFF")")
            .foregroundColor(isOn ? .green : .red)
    }
}
