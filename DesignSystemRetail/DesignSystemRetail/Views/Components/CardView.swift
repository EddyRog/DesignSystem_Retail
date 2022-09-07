//
// CardView.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct CardView: View {
    static let alignment: Alignment = .leading
    // --- Config.
    // some View = of protocol type
    var body: some View {
        VStack(spacing: DSSpacing.none) {
            // --- image.
            Image("EmptyPicture")
                .resizable()
                .aspectRatio(contentMode: .fit)

            VStack(alignment: .leading, spacing: DSSpacing.none) {
                // --- Title.
                Text("Title")
                    .padding([.leading, .trailing, .top])
                    .frame(maxWidth: .infinity, alignment: CardView.alignment)
//                    .debugViewColor()
                    .dsFontStyle(.title)
                    .foregroundColor(Color.white)
                // --- Sub Title.
                Text("Short introduction")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: CardView.alignment)
//                    .debugViewColor()
            }
        }
        .background(Color("TabBarItemUnselected"))
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
