//
// TabViewHome1.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct TabViewHome: View {
    var body: some View {
        VStack(spacing: DSSpacing.none) {
            DSHomeHeader00()
            DSCardList()
        }
        .enableLightStatusBar()
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}
