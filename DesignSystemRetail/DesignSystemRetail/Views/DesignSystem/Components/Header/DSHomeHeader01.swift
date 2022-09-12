//
// DSHomeHeader01.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct DSHomeHeader01: View {
    var body: some View {
        VStack {
            Image("iphone-4")
                .fitToAspectRatio(.fourToThree)

        }
        .padding(.bottom, DSSpacing.xxl + 10)
        .debugViewColor()
        .background {
            LinearGradient(colors: [
                Color("Color-9"),
                Color("Color-10")
            ], startPoint: UnitPoint(x: 0.00, y: 0.00), endPoint: UnitPoint(x: 0.00, y: 1.00))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct DSHomeHeader01_Previews: PreviewProvider {
    static var previews: some View {
        DSHomeHeader01()
    }
}
