//
//  GestureStateView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import SwiftUI

struct GestureStateView: View {
    @GestureState private var dragOffset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.blue)
            .frame(width: 150, height: 150)
            .offset(dragOffset)
            .gesture(
                DragGesture()
                    .updating($dragOffset) { value, state, _ in
                        state = value.translation
                    }
            )
            .padding()
            .navigationTitle("@GestureState Example")
    }
}
