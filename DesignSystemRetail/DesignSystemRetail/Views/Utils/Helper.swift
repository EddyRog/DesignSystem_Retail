//
// Helper.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

// ==================
// MARK: - HELPER DEBUGER
// ==================
// Impl Modifier : UnderWood
struct DebugView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: CGFloat.infinity)
            .background(Color(UIColor.randomColor))// debug
    }
}
struct DebugViewColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color(UIColor.randomColor))// debug
    }
}

// Add Modifier
extension View {
    func debugView() -> some View {
        modifier(DebugView())
    }
    func debugViewColor() -> some View {
        modifier(DebugViewColor())
    }
}

