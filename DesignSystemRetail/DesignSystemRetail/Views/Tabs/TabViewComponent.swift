//
// TabViewComponent.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct TabViewComponent: View {

    var body: some View {

        NavigationView {
            List {
                NavigationLink("Header00") {
                    DSHomeHeader00()
                }
                NavigationLink("Header01") {
                    DSHomeHeader01()
                }
                NavigationLink("CardView") {
                    DSCardView()
                }
                NavigationLink("CardList") {
                    DSCardList()
                }
                NavigationLink("Home") {
                    TabViewHome()
                }
                NavigationLink("Home Details") {
                    DSCardViewDetails(title: "title", image: "iphone-4")
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Component")
    }
}

// ⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬⌬
#if DEBUG
struct TabViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewComponent()
    }
}
#endif
