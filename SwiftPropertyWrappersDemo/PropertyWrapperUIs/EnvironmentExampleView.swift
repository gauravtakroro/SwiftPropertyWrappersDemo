//
//  EnvironmentExampleView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct EnvironmentExampleView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Current Color Scheme: \(colorScheme == .dark ? "Dark" : "Light")")
            .padding()
            .navigationTitle("@Environment Example")
    }
}
