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

