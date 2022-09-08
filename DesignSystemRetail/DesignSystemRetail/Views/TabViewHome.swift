//
// TabViewHome.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct TabViewHome: View {
    var body: some View {
        VStack {
            // --- Top.
            VStack(alignment: .center, spacing: DSSpacing.none) {
                Image("EmptyPicture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .background(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: DSRadiusSize.small))
                Text("Hello, John")
                    .font(.system(size: DSFontSize.xl))
                    .foregroundColor(.white)
                    .padding(.top, DSSpacing.s)
                Text("since the 1500s, when an unknown printer took a galley of type an")
                    .font(.system(size: DSFontSize.m))
                    .foregroundColor(.white)
                    .padding(.all, DSSpacing.s)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .background(Color.yellow)

            // --- Bottom.
            ScrollView {
                let spacingBetweenCardView: CGFloat = DSSpacing.m
                let spacingBetweenRowOfCardView: CGFloat = DSSpacing.m

                let columns = [
                    GridItem(.flexible(), spacing: spacingBetweenCardView, alignment: .topLeading),
                    GridItem(.flexible(), spacing: spacingBetweenCardView, alignment: .topLeading)
                ]

                ScrollView {
                    LazyVGrid(columns: columns, spacing: spacingBetweenRowOfCardView) {
                        ForEach(0..<3) { valueInt in
                            CardView()
                        }
                    }
                }
            }
            .padding(EdgeInsets(top: DSSpacing.m, leading: DSSpacing.m, bottom: DSSpacing.none, trailing: DSSpacing.m))
            .background(Color("BackgroundPrimary"))
            .cornerRadius(DSRadiusSize.normal, corners: [.topLeft, .topRight])
        }
        .background(Color.yellow)
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}
