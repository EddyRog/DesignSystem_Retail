//
// DesignSystemRetailApp.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

@main
struct DesignSystemRetailApp: App {
    @AppStorage("keyDebug") var keyDebug: Bool = false
    var body: some Scene {
        WindowGroup {
                MainView()
        }
    }
}
