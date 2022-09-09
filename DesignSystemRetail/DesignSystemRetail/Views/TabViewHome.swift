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
    private let iphonesImagesName = ["iphone-1","iphone-2","iphone-3","iphone-1","iphone-2","iphone-3"]
    private let iphonesImagesName1 = ["Get for free the new iPhone 14","Get for free a mac","Hello world","Mac Book Pro 14'","Ipad air","iPhoneXS Pro max"]

    var body: some View {

        ZStack {
            VStack(spacing: 0) {
                // MARK: - Header
                HomeHeader()

                // MARK: - Items
                ScrollView {
                    // MARK: - Card00
                    LazyVGrid(columns: columns, spacing: spacingBetweenRowCardView) {
                        ForEach(0..<6) { index in
                            CardView00(imageName: iphonesImagesName[index], title: iphonesImagesName1[index]) // to see shadow
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
        // --
    }
}

struct TabViewHome_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}

struct HomeHeader: View {
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
        .padding(.bottom, 40)
        .background(Color("Color-3"))
    }
}
struct CardView00: View {
    var imageName: String
    var title: String

    var body: some View {
        VStack(spacing: 0) {
            Image(imageName)
                .fitToAspectRatio(.square)
            VStack(spacing: 0) {
                Text(title)
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 14))
                    .foregroundColor(Color("Color-4"))
                    .lineLimit(1)
                    .frame(height: 40)
            }
            .padding(.horizontal, 10)
//            .padding(.vertical, 5)
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


// ==================
// MARK: - Status bar style
// ==================
