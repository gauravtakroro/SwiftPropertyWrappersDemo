//
//  FocusStateView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct FocusStateView: View {
    @FocusState private var isFocused: Bool
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Focus Example", text: $text)
                .focused($isFocused)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(isFocused ? "Unfocus" : "Focus") {
                isFocused.toggle()
            }
        }
        .padding()
        .navigationTitle("@FocusState Example")
    }
}
