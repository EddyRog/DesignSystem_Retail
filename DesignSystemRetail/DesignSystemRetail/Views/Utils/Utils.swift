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


// ==================
// MARK: - UIColor
// ==================
extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    /// ▶ generate random color.
    static var randomColor: UIColor {
        get {
            let red:CGFloat = CGFloat( arc4random_uniform(UInt32(250)) )
            let green:CGFloat = CGFloat( arc4random_uniform(UInt32(250)) )
            let blue:CGFloat = CGFloat( arc4random_uniform(UInt32(250)) )
            return UIColor.rgb(red: red, green: green, blue: blue)
        }
    }
}


// ==================
// MARK: - Spacing
// ==================
/// ▶ Spacing are used to position elements on the screen and layout within components.
public enum DSSpacing {
    /// none: 0
    public static let none: Double = 0
    /// xs: 4
    public static let xs: Double = 4
    /// s: 8
    public static let s: Double = 8
    /// m: 16
    public static let m: Double = 16
    /// l: 24
    public static let l: Double = 24
    /// xl: 32
    public static let xl: Double = 32
    /// xxl: 40
    public static let xxl: Double = 40
}


// ==================
// MARK: - DSFontStyle
// ==================
/// ▶ Define styles for typography.
public enum DSFontStyle: String, CaseIterable {
    case title
    public var font: Font {
        switch self {
            case .title:
                return Font.largeTitle.bold()
        }
    }
}
extension View {
    public func dsFontStyle(_ dsFontStyle: DSFontStyle) -> some View {
        font(dsFontStyle.font)
    }
}
