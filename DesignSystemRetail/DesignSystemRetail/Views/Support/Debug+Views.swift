//
// Helper.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

// ==================
// MARK: - HELPER DEBUGER
// ==================
/// ▶ Allow to see the background with random color for each view that implement the modifier.
/// DebugView or DebugViewColor
/// DebugView => apply RandomBackgroundColor + maxWidth
/// DebugView => apply only RandomBackgroundColor

// !!!: ❎ Change The Value Here to enable/disable ❎
//var isDebug = true
var isDebug = false


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


// Add Modifier
extension View {
    func debugView(isOn value: Bool = isDebug) -> some View {
        modifier(DebugView(isOn: value))
    }
    func debugViewColor(isOn value: Bool = isDebug) -> some View {
        modifier(DebugViewColor(isOn: value))
    }
}
