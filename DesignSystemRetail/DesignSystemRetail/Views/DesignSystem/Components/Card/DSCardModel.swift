//
// DSCardModel.swift
// DesignSystemRetail
// Created in 2022
// Swift 5.0


import Foundation

// --- Model.
struct DSCardModel: Identifiable, Codable, Hashable {
    var id: UUID = UUID()
    var image: String
    var name: String
}
