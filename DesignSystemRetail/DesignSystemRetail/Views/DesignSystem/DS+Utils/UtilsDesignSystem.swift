//
// Utils.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI
import UIKit

// TODO: ❎ Must define correctly the design system utilies [WIP] ❎
// ==================
// MARK: - DSSpacing
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
//    public static let m: Double = 16
    /// l: 24
//    public static let l: Double = 24
    /// xl: 32
//    public static let xl: Double = 32
    /// xxl: 40
    public static let xxl: Double = 40
}

/// ▶ FontSizing is used to the font size.
public enum DSFontSize {
//    public static let xs: Double = 10
//    public static let s: Double = 13
//    public static let m: Double = 15 // body
//    public static let l: Double = 20 // subTitle
//    public static let xl: Double = 28 // title
//    public static let xxl: Double = 36
}

/// ▶ RadiusSize.
public enum DSRadiusSize {
    public static let small: Double = 10
    public static let normal: Double = 20
}


// ==================
// MARK: - DSFontStyle
// ==================
/// ▶ Define styles for typography.
public enum DSFontStyle: String, CaseIterable {
    case title
    case subTitle
    case body

    public var font: Font {
        switch self {
            case .title:
                return Font.largeTitle.bold()
            case .subTitle:
                return Font.body.bold()
            case .body:
                return Font.caption
        }
    }
}
extension View {
    public func dsFontStyle(_ dsFontStyle: DSFontStyle) -> some View {
        font(dsFontStyle.font)
    }
}


// ==================
// MARK: - Corner raduis custom
// ==================
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
/// ▶ Define each corner with a size.
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
