//
// DSCardViewDetails.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct DSCardViewDetails: View {
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
                DSHomeHeader01()

                Group {
                    // MARK: - Items
                    ScrollView {
                        // MARK: - Title
                        DSDetailTitle()

                        // MARK: - Bloc (title + text)
                        DSDetailBlocDescription()
                        DSDetailBlocDescription()
                        DSDetailBlocDescription()
                        DSDetailBlocDescription()

                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 40.0)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(40, corners: [.topLeft,.topRight])
                    //.background(Color("Color-3")) // yellow behind corners
                }
                .offset(y: -DSSpacing.xxl)
            }
            // --
        }
        .enableLightStatusBar()
        // --
    }
}

struct DSCardViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        DSCardViewDetails()
    }
}


// ==================
// MARK: - SubView
// ==================
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
struct DSDetailTitle: View {
    var body: some View {
        Text("iPhone 14 Pro and iPhone 14 Pro Max®")
            .padding(.bottom, DSSpacing.s)
            .dsFontStyle(.title)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
            .frame(maxWidth: .infinity, alignment: .leading)
            .debugViewColor()
    }
}
struct DSDetailBlocDescription: View {
    var body: some View {
        Group {
            Text("Pro.\nBeyond.")
                .padding(.bottom, DSSpacing.xs)
                .dsFontStyle(.subTitle)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .debugViewColor()
            Text("Available starting 9.16 From $41.62/mo. for 24 mo. or $999 before trade-in*\nA magical new way to interact with iPhone. Groundbreaking safety features designed to save lives. An innovative 48MP camera for mind-blowing detail. All powered by the ultimate smartphone chip.")
                .padding(.bottom, DSSpacing.s)
                .dsFontStyle(.body)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("Color-4"))
                .debugViewColor()
        }
    }
}
