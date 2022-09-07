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
                    Image("TabItemComponent")
                    Text("Home")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.brown)
                .foregroundColor(Color.black)
        }
        .tabBarStyle(
            backgroundColor: Color(uiColor: UIColor.black),
            itemColor: Color(uiColor: UIColor.green),
            selectedItemColor: Color(uiColor: .red),
            badgeColor: Color(uiColor: .systemPink)
        )
//        .tabBarStyle(backgroundColor: Color(UIColor.brown), itemColor: nil, selectedItemColor: nil, badgeColor: nil)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}



// ==================
// MARK: - TabBar
// ==================
// ==================
// MARK: - TabBar
// ==================
extension View {
    func tabBarStyle(backgroundColor: Color? = nil, itemColor: Color? = nil, selectedItemColor: Color? = nil, badgeColor: Color? = nil) -> some View {
        onAppear {
			// --- item.
            let itemAppearance: UITabBarItemAppearance = UITabBarItemAppearance()

            // --- itemColor.
            if let itemColor = itemColor {
                itemAppearance.normal.iconColor = UIColor(itemColor)
                itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(itemColor)]
            }

            if let selectedColor = selectedItemColor {
                itemAppearance.selected.iconColor = UIColor(selectedColor)
                itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(selectedColor)]
            }

            if let badgeColor = badgeColor {
                itemAppearance.normal.badgeBackgroundColor = UIColor(badgeColor)
                itemAppearance.selected.badgeBackgroundColor = UIColor(badgeColor)
            }

            // --- bar.
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()

			// --- background.
            if let backgroundColor = backgroundColor {
                let uiColor = UIColor(backgroundColor)
                appearance.backgroundColor = uiColor
            }

            // --- Appearance -> ItemAppearance.
            appearance.stackedLayoutAppearance = itemAppearance
            appearance.inlineLayoutAppearance = itemAppearance
            appearance.compactInlineLayoutAppearance = itemAppearance

            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}
