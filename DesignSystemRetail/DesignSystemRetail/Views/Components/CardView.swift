//
// CardView.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct CardView: View {
    let insets = EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
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
                    .foregroundColor(Color.black)

                // --- Sub Title.
                Text("Short introduction")
                    .padding()
                    .frame(maxWidth: .infinity, alignment: CardView.alignment)
//                    .debugViewColor()
            }
        }
        .background(.white)
        .clipShape(
            RoundedRectangle(cornerRadius: DSRadiusSize.normal)
        )
        .padding(insets)
        .shadow(radius: 1)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
