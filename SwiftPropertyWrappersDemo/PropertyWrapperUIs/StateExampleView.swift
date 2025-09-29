//
//  StateExampleView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct StateExampleView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter: \(counter)")
            Button("Increment Counter") {
                counter += 1
            }
        }
        .padding()
        .navigationTitle("@State Example")
    }
}
