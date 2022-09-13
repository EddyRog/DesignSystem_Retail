//
// DSHomeHeader.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct DSHomeHeader: View {
    var yOffsetCornerRadius: CGFloat = 40 // matches the rounded edge of DSCardList which comes on top of DSHomeHeader, it readjusts the content
    var body: some View {
        VStack {
            Image(systemName: "house")
                .padding(.top, 10.0)
                .padding(.bottom, 1.0)
                .font(.system(size: 50))
                .foregroundColor(.white)
            Text("Hello, Jacob")
                .fontWeight(.medium)
                .foregroundColor(.white)
                .lineLimit(1)
                .font(.system(size: 40))
            Text("Here'w what is new at Apple store")
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 40 + yOffsetCornerRadius)
//        .background(Color("Color-3"))
        .background(Color.red)
    }
}
