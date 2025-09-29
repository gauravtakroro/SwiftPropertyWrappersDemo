//
//  UserSettings.swift
//  SwiftPropertyWrappersDemo
//
//  Created by Gaurav Tak on 29/09/25.
//


import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    @Published var username: String = "Guest"
    @Published var notificationsEnabled: Bool = true
}
