//
// TabViewHome1.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct TabViewHome: View {
    private var spacingLayoutCard: CGFloat {
        0
    }
    private var spacingBetweenCardView: CGFloat {
        get {
            spacingLayoutCard
        }
    }
    private var spacingBetweenRowCardView: CGFloat {
        get {
            spacingLayoutCard
        }
    }
    private var columns: [GridItem] {
        get {
            [
                GridItem(.flexible(), spacing: spacingBetweenCardView, alignment: .topLeading),
                GridItem(.flexible(), spacing: spacingBetweenCardView, alignment: .topLeading),
            ]
        }
    }
    private let iphonesImagesName = ["iphone-1","iphone-2","iphone-3","iphone-1","iphone-2","iphone-3","iphone-1","iphone-2","iphone-3"]
    private let iphonesImagesName1 = ["Get for free the new iPhone 14","Get for free a mac","Hello world","Mac Book Pro 14'","Ipad air","iPhoneXS Pro max","Mac Book Pro 14'","Ipad air","iPhoneXS Pro max"]

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // MARK: - Header
                DSHomeHeader()

                // MARK: - Items
                ScrollView {
                    // MARK: - Card00
                    LazyVGrid(columns: columns, spacing: spacingBetweenRowCardView) {
                        ForEach(0..<iphonesImagesName.count, id: \.self) { index in
                            DSCardView00(imageName: iphonesImagesName[index], title: iphonesImagesName1[index]) // to see shadow
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 40.0)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(40, corners: [.topLeft,.topRight])
                .background(Color("Color-3")) // yellow behind corners
            }
            // --
        }
        .enableLightStatusBar()
        // --
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}
