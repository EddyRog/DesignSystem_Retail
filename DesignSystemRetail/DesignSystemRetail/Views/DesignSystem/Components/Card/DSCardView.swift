//
// DSCardView00.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct DSCardView: View {

    // --- UIConfig.
    var imageName: String = "EmptyPicture"
    var title: String = "DefaultTitle"

    var body: some View {
        VStack(spacing: DSSpacing.none) {
            // --- CardViewImage.
            Image(imageName)
                .fitToAspectRatio(.square)

            // --- CardViewTitle.
            VStack(spacing: DSSpacing.none) {
                Text(title)
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 14))
                    .foregroundColor(Color("Color-4"))
                    .lineLimit(1)
                    .frame(height: 40)
            }
            .padding(.horizontal, 10)
        }
        .cornerRadius(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: .gray, radius:6, x: 0, y: 2)
        )
        .padding(.all, 10)
    }
}

struct DSCardView00_Previews: PreviewProvider {
    static var previews: some View {
        DSCardView()
    }
}
