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

    var isOn: Bool = false

    func body(content: Content) -> some View {
        if isOn {
            content
                .frame(maxWidth: CGFloat.infinity)
                .background(Color(UIColor.randomColor))// debug
        } else {
            content
        }
    }
}
struct DebugViewColor: ViewModifier {
    var isOn: Bool = false
    func body(content: Content) -> some View {
        if isOn {
            content
                .background(Color(UIColor.randomColor))// debug
        } else {
            content
        }
    }
}


// !!!: ❎ Change The Value Here ❎
//var isDebug = true
var isDebug = false
// Add Modifier
extension View {
    func debugView(isOn value: Bool = isDebug) -> some View {
        modifier(DebugView(isOn: value))
    }
    func debugViewColor(isOn value: Bool = isDebug) -> some View {
        modifier(DebugViewColor(isOn: value))
    }
}
