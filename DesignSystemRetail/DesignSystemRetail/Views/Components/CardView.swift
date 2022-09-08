//
// CardView.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct CardView: View {
    let insetsTitle = EdgeInsets(top: DSSpacing.s, leading: DSSpacing.none, bottom: DSSpacing.none, trailing: DSSpacing.none)
    let insetsSubTitle = EdgeInsets(top: DSSpacing.none, leading: DSSpacing.none, bottom: DSSpacing.s, trailing: DSSpacing.none)
    let containerTitleSubtitleInset = EdgeInsets(top: DSSpacing.none, leading: DSSpacing.s, bottom: DSSpacing.none, trailing: DSSpacing.s)
    let lineWidth: CGFloat = 20
    let colorLineWidth = Color.gray
//    var deltaPaddingForStroke: CGFloat {
//        get {
//            (lineWidth / 3 )
//        }
//    } // between the inside and the outside of the view, need to remove the delta to avoid seeing the image overflow
    var paddingForLineWidth: CGFloat {
        get {
            (lineWidth / CGFloat.pi)
        }
    }


    // --- Config.
    // some View = of protocol type
    var body: some View {

        VStack(alignment: .leading, spacing: DSSpacing.none) {
            // --- image.
            Image("EmptyPicture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(DSRadiusSize.normal, corners: [.topLeft, .topRight])

            // --- Container Text.
            VStack(alignment: .leading, spacing: DSSpacing.none) {
                Text("Title")
                    .font(.title3)
                    .fontWeight(.light)
                    .lineLimit(1)
                    .padding(insetsTitle)
                Text("Short introduction Short introductionShort introductionShort introductionShort introductionShort introductionShort introductionShort introductionShort introduction")
                    .font(.footnote)
                    .fontWeight(.light)
                    .lineLimit(1)
                    .padding(insetsSubTitle)
            }
            .padding(containerTitleSubtitleInset)
            .background(Color.white)
        }
        .cornerRadius(DSRadiusSize.normal)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
