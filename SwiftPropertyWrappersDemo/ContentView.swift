//
//  ContentView.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var userSettings = UserSettings()
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("State Example", destination: StateExampleView())
                NavigationLink("Binding Example", destination: BindingExampleView())
                NavigationLink("ObservedObject Example", destination: ObservedObjectView())
                NavigationLink("StateObject Example", destination: StateObjectView())
                NavigationLink("EnvironmentObject Example", destination: EnvironmentObjectView())
                NavigationLink("Environment Example", destination: EnvironmentExampleView())
                NavigationLink("AppStorage Example", destination: AppStorageView())
                NavigationLink("SceneStorage Example", destination: SceneStorageView())
                NavigationLink("FocusState Example", destination: FocusStateView())
                NavigationLink("GestureState Example", destination: GestureStateView())
            }
            .navigationTitle("SwiftUI Property Wrappers")
        }
        .environmentObject(userSettings)
    }
}

#Preview {
    ContentView()
}
