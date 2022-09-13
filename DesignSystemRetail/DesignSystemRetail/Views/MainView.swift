//
// ContentView.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct MainView: View {
    @State private var selectedTabIndex = 1
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            TabViewComponent()
                .tabItem {
                    Image("TabItemComponent")
                    Text("Component")
                }
                .tag(0)
            TabViewHome()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(1)
        }
        .tabBarStyle(
            backgroundColor: Color("TabBarBackground"),
            itemColor: Color("TabBarItemUnselected"),
            selectedItemColor: Color("TabBarItemSelected"),
            badgeColor: Color("TabBarBadge")
        )
    }
}
