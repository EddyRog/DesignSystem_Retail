//
// TestUI.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI
import UIKit

struct TestUI: View {
    
    @State private var valueTextfield = ""

    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(height: 0.1)
                // MARK: - Header
                Header()

                // MARK: - Search
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 10.0)
                        .font(.title2)
                    TextField("Search for dish or restaurant", text: $valueTextfield)
                        .frame(height: 50.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
                }
                .debugView()
                .background(.white)
                .frame(height: 50.0)
                .clipShape(
                    RoundedRectangle(cornerRadius: 20)
                )
                .padding(.horizontal, 15.0)

                // ==================
                // MARK: - END
                // ==================



                Spacer()
            }
            .background(Color("Backgroundsecondary"))
        }
    }
}



#if DEBUG
struct TestUI_Previews: PreviewProvider {
    static var previews: some View {
        TestUI()
    }
}
#endif

struct Header: View {
    var body: some View {
        HStack {
            // --- left.
            VStack (alignment: .leading) {
                Text("Delivery to")
                    .font(.bold(.body)())
                    .debugViewColor()
                HStack(spacing: 5.0) {
                    Image(systemName: "mappin.circle")
                        .debugViewColor()
                    Text("Hanoi, Vietnam")
                        .debugViewColor()
                }

            }
            .padding(.leading, 15)
            .layoutPriority(100)

            Spacer()

            // --- right.
            Image("Profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 60.0)
                .clipShape(Circle()) // pathfinder
                .overlay(
                    Circle()
                        .stroke(lineWidth: 2)
                        .foregroundColor(.white)
                )
                .shadow(color: .black, radius: 5, x: 0, y: 0)
                .padding(.trailing, 15.0)

        }
        .debugView()
    }
}
