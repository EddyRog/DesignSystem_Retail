//
// Utils.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI
import UIKit

// ==================
// MARK: - TabBar
// ==================
extension View {
    func tabBarStyle(backgroundColor: Color? = nil, itemColor: Color? = nil, selectedItemColor: Color? = nil, badgeColor: Color? = nil) -> some View {
        onAppear {
            // --- item.
            let itemAppearance: UITabBarItemAppearance = UITabBarItemAppearance()

            // --- itemColor.
            if let itemColor = itemColor {
                itemAppearance.normal.iconColor = UIColor(itemColor)
                itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(itemColor)]
            }

            if let selectedColor = selectedItemColor {
                itemAppearance.selected.iconColor = UIColor(selectedColor)
                itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(selectedColor)]
            }

            if let badgeColor = badgeColor {
                itemAppearance.normal.badgeBackgroundColor = UIColor(badgeColor)
                itemAppearance.selected.badgeBackgroundColor = UIColor(badgeColor)
            }

            // --- bar.
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()

            if let backgroundColor = backgroundColor {
                let uiColor = UIColor(backgroundColor)
                appearance.backgroundColor = uiColor
            }

            // --- Appearance -> ItemAppearance.
            appearance.stackedLayoutAppearance = itemAppearance
            appearance.inlineLayoutAppearance = itemAppearance
            appearance.compactInlineLayoutAppearance = itemAppearance

            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}
