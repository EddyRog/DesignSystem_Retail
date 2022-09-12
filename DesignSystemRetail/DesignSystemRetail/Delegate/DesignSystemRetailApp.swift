//
// DesignSystemRetailApp.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import SwiftUI

@main
struct DesignSystemRetailApp: App {
    @AppStorage("keyDebug") var keyDebug: Bool = false

    var body: some Scene {
        WindowGroup {
//            TestView()
                MainView()
//            DSCardViewDetails()
        }
    }

    init() {
        print("init ✅")
		let card = DSCardModel(image: "iphone-1", name: "Iphone")
        let cards = Array.init(repeating: card, count: 10)
        print(cards)

    }

}
