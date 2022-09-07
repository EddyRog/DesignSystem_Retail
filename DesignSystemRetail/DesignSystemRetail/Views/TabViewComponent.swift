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
                NavigationLink("CardView Lien") {
                    Text("CardView")
                }
                NavigationLink("View") {
                    Text("View")
                }
            }

        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Component")
    }
}
