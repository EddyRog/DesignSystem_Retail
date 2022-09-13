//
// DSCardList.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct DSCardList: View {
    // --- UIConfig.
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

    // --- Data.
    @State var datas = [
        DSCardModel(image: "iphone-1", name: "Get for free"),
        DSCardModel(image: "iphone-2", name: "Mac Book Pro 14"),
        DSCardModel(image: "iphone-3", name: "Pay for your new Mac over time, interest-free with Apple Card"),
        DSCardModel(image: "iphone-1", name: "enjoy 3% Daily Cash back"),
        DSCardModel(image: "iphone-2", name: "Shop one on one with a Specialist online. Or reserve a shopping session at an Apple Store"),
        DSCardModel(image: "iphone-1", name: "We’ll help you discover the amazing things"),
        DSCardModel(image: "iphone-1", name: "We’ll help you discover the amazing things"),
    ]
    @State var dataToPresent: DSCardModel?

    // --- UIConfig.
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                LazyVGrid(columns: columns, spacing: spacingBetweenRowCardView) {
                    ForEach($datas) { $data in

                        DSCardView(imageName: data.image, title: data.name)
                            .sheet(item: $dataToPresent) { data in
                                DSCardViewDetails(title: data.name, image: data.image)

                            }
                            .onTapGesture {
                                dataToPresent = data
                            }
                    }
                }
                .padding(.bottom, 15) // add extra space for the end of the scroll
            }
        }
        .padding(.horizontal, 20)
        .padding(.top, 40.0)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(40, corners: [.topLeft,.topRight])
        .offset(y: -40)
        .padding(.bottom, -40)
    }
}

struct TabViewHome01_Previews: PreviewProvider {
    static var previews: some View {
        TabViewHome()
    }
}
