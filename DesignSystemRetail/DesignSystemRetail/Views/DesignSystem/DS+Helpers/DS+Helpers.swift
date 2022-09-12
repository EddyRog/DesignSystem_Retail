//
// Helper+ResizeImage.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

// ==================
// MARK: - Cropping Images
// ==================
/// Common aspect ratios
public enum AspectRatio: CGFloat {
    case square = 1
    case threeToFour = 0.75
    case fourToThree = 1.75
}

/// Fit an image to a certain aspect ratio while maintaining its aspect ratio
public struct FitToAspectRatio: ViewModifier {

    private let aspectRatio: CGFloat

    public init(_ aspectRatio: CGFloat) {
        self.aspectRatio = aspectRatio
    }

    public init(_ aspectRatio: AspectRatio) {
        self.aspectRatio = aspectRatio.rawValue
    }

    public func body(content: Content) -> some View {
        ZStack {
            Rectangle()
                .fill(Color(.clear))
                .aspectRatio(aspectRatio, contentMode: .fit)

            content
                .scaledToFill()
                .layoutPriority(-1)
        }
        .clipped()
    }
}

// Image extension that composes with the `.resizable()` modifier
public extension Image {
    func fitToAspectRatio(_ aspectRatio: CGFloat) -> some View {
        self.resizable().modifier(FitToAspectRatio(aspectRatio))
    }

    func fitToAspectRatio(_ aspectRatio: AspectRatio) -> some View {
        self.resizable().modifier(FitToAspectRatio(aspectRatio))
    }
}



// ==================
// MARK: - Status bar style light theme
// ==================
struct LightStatusBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onAppear {
                UIApplication.shared.statusBarStyle = .lightContent
            }
            .onDisappear {
                UIApplication.shared.statusBarStyle = .darkContent
            }
    }
}

extension View {
    /// ▶ Forces the light theme only for the current view.
    func enableLightStatusBar() -> some View {
        self.modifier(LightStatusBarModifier())
    }
}


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
