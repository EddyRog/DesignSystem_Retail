//
// DSCardViewDetails.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct DSCardViewDetails: View {
    @State var title: String = "Title"
    @State var image: String = "EmptyPicture"

    var body: some View {
        ZStack {
            VStack(spacing: DSSpacing.none) {
                // MARK: - Header
                DSHomeHeader01(image: image)

                Group {
                    // MARK: - Items
                    ScrollView {
                        // MARK: - Title
                        DSDetailTitle("\(title)")

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
                }
                .offset(y: -40)
                .padding(.bottom, -40)
            }

        }
        .enableLightStatusBar()
    }
}

struct DSCardViewDetails_Previews: PreviewProvider {

    static var previews: some View {
        DSCardViewDetails(title: "Iphone 14", image: "iphone-4")
    }
}


// ==================
// MARK: - SubView
// ==================
struct DSDetailTitle: View {
    var title: String

    internal init(_ title: String) {
        self.title = title
    }

    var body: some View {
        Text(title)
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
