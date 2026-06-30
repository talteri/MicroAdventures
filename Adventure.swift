//
//  Adventure.swift
//  MicroAdventures
//
//  Created by Tal Teri on 30/06/2026.
//

import Foundation
import CoreLocation

// A category of micro adventure.
enum AdventureCategory: String, CaseIterable, Identifiable {
    case outdoors = "Outdoors"
    case food = "Food & Drink"
    case culture = "Culture"
    case water = "Water"
    case urban = "Urban"

    var id: Self { self }

    var systemImage: String {
        switch self {
        case .outdoors: "leaf"
        case .food: "fork.knife"
        case .culture: "building.columns"
        case .water: "water.waves"
        case .urban: "building.2"
        }
    }
}

// How much effort an adventure requires.
enum EffortLevel: String, CaseIterable, Identifiable {
    case easy = "Easy"
    case moderate = "Moderate"
    case challenging = "Challenging"

    var id: Self { self }

    var systemImage: String {
        switch self {
        case .easy: "figure.walk"
        case .moderate: "figure.hiking"
        case .challenging: "figure.climbing"
        }
    }
}

// A single micro adventure suggestion.
struct Adventure: Identifiable {
    let id = UUID()
    var title: String
    var description: String
    var category: AdventureCategory
    var effortLevel: EffortLevel
    var locationName: String
    var latitude: Double
    var longitude: Double
    var isCompleted: Bool = false

    // The map coordinate derived from the stored latitude and longitude.
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
