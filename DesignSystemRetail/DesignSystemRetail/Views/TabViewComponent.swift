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
                    NavigationLink("CardView") {
                        CardView00(imageName: "EmptyPicture", title: "EmptyPicture")
                    }
                    NavigationLink("OtherView") {
                        Text("OtherView")
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
