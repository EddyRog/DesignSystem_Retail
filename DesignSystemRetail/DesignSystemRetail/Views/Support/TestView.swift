//
// TestView.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

// CardViewOO

struct TestView: View {
	@State private var showDetail = false

    var imageName: String = "iphone-1"
    var title: String = "Iphone"

    @State private var bindingSheet = false
    var body: some View {

        VStack {
            Button {
                self.showDetail = true
            } label: {

                ContentCardView(imageName: imageName, title: title)

            }.sheet(isPresented: $showDetail) {

                DSCardViewDetails()
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}


struct ContentCardView: View {
    var imageName: String
    var title: String
    var body: some View {
        VStack(spacing: DSSpacing.none) {
            // --- Image.
            Image(imageName)
                .fitToAspectRatio(.square)
            
            // --- Text.
            VStack(spacing: DSSpacing.none) {
                Text(title)
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 14))
                    .foregroundColor(Color("Color-4"))
                    .lineLimit(1)
                    .frame(minHeight: 40)
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
