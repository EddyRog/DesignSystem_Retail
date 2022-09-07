//
// ContentView.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
			Text("Component")
                .tabItem {
                    Image("TabItemComponent")
                    Text("Component")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.brown)
                .foregroundColor(Color.black)
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.brown)
                .foregroundColor(Color.black)
        }
        .tabBarStyle(
            backgroundColor: Color("TabBarBackground"),
            itemColor: Color("TabBarItemUnselected"),
            selectedItemColor: Color("TabBarItemSelected"),
            badgeColor: Color("TabBarBadge")
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
